import fs from "fs";
import {join, relative} from "path";

export interface PackageInfo {
    name: string;
    description: string;
    version: string;
    engines?: Record<string, string>;
    dart?: {
        build?: Record<string, Record<string, any>>;
        dependencies?: Record<string, string>;
        devDependencies?: Record<string, string>;
        [x: string]: any,
    };
    dependencies?: Record<string, string>;
}

export class Project {
    static configFile = "./package.json";

    static async load(root: string): Promise<Project | null> {
        try {
            const f = await fs.promises.readFile(join(root, Project.configFile));
            return new Project(root, JSON.parse(String(f)) as PackageInfo);
        } catch (e) {
            return null;
        }
    }


    static isDartProject(name: string) {
        return name.startsWith("@dart_") || name.includes("/dart_");
    }

    static normalizeDarkPkgName = (name: string) => {
        if (name.startsWith("dart_")) {
            return name.slice("dart_".length);
        }
        if (name.includes("/dart_")) {
            const parts = name.split("/dart_")
            return parts[parts.length - 1];
        } else {
            return name;
        }
    };

    constructor(public root: string, public info: PackageInfo) {
    }


    pickDartPackages(pkgs: Record<string, string> = {}, mapper: (v: string, name: string) => any = (v: string) => v) {
        const packages: Record<string, string> = {};

        for (let name in pkgs) {
            if (Project.isDartProject(name)) {
                packages[name] = mapper(pkgs[name], name);
            }
        }

        return packages;
    }

    normalizeVersions(versions: Record<string, any>, {resolveProjectVersion}: {
        resolveProjectVersion?: (projectName: string) => string | undefined,
    } = {}): Record<string, any> {
        const resolved: Record<string, any> = {};

        for (let pkgName in versions) {
            const version = versions[pkgName];

            if (version) {
                if (resolveProjectVersion && version.startsWith("workspace:")) {
                    resolved[Project.normalizeDarkPkgName(pkgName)] = resolveProjectVersion(pkgName);
                    continue;
                }

                if (version.includes(":")) {
                    const [k, v] = version.split(":");
                    resolved[Project.normalizeDarkPkgName(pkgName)] = {[k]: v};
                    continue;
                }

                resolved[Project.normalizeDarkPkgName(pkgName)] = version;
            }
        }

        return resolved;
    }

    configPubspec(rootProject: Project, resolveProjectVersion: (projectName: string) => string | undefined) {
        const _resolveProjectVersion = (p: string) => {
            const founded = resolveProjectVersion(p);
            if (founded) {
                return `^${founded}`;
            }
            throw new Error(`missing pkg ${p}`);
        };

        const hasFlutter = this.info.dart?.dependencies?.["flutter"] ?? false

        const {
            build,
            dependencies,
            devDependencies,
            ...others
        } = this.info.dart || {}


        return {
            ...others,
            name: Project.normalizeDarkPkgName(this.info.name),
            description: this.info.description,
            version: this.info.version ?? "0.0.0",
            environment: {
                sdk: this.info.engines?.["dart"] ?? rootProject.info.engines?.["dart"]
            },
            dependencies: this.normalizeVersions({
                ...dependencies,
                ...rootProject.info.dart?.dependencies,
                ...this.pickDartPackages(this.info.dependencies),
            }, {
                resolveProjectVersion: _resolveProjectVersion
            }),
            dev_dependencies: this.normalizeVersions({
                ...devDependencies,
                ...rootProject.info.dart?.devDependencies,
                ...(hasFlutter ? {
                    flutter_test: "sdk:flutter",
                    test: "" // when flutter_test exists need to remove test
                } : {})
            }, {
                resolveProjectVersion: _resolveProjectVersion
            })
        };
    }

    configPubspecOverrides(resolveProjectRoot: (projectName: string) => string | undefined) {
        const pkgs = this.pickDartPackages(this.info.dependencies ?? {}, (version, pkgName) => {
            const root = resolveProjectRoot(pkgName);

            if (root) {
                return `path:${relative(this.root, root)}`;
            }

            return;
        });


        if (Object.keys(pkgs).length) {
            return {
                dependency_overrides: this.normalizeVersions(pkgs)
            };
        }

        return null;
    }

    configBuild() {
        const getDefaultOptions = (name: string) => ({
            options: {
                build_extensions: {
                    "{{dir}}/{{file}}.dart": `{{dir}}/__generated__/{{file}}.${name.includes("combining_builder") ? "g" : name}.dart`
                }
            }
        });

        const build = this.info.dart?.build;

        if (build) {
            const builders: Record<string, any> = {};

            for (let name in build) {
                builders[name] = {
                    ...getDefaultOptions(name),
                    ...build[name]
                };
            }

            return {
                targets: {
                    $default: {
                        builders: builders
                    }
                }

            };
        }


        return null;
    }
}
