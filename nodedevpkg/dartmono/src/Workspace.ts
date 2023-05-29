import * as fs from "fs";
import {join, dirname} from "path";
import {globby} from "globby";
import {dump, load} from "js-yaml";
import {Project} from "./Project";
import {merge} from "lodash";

export class Workspace {
    static configFile = "./pnpm-workspace.yaml";

    static async load(cwd: string): Promise<Workspace> {
        const workspaceRoot = await resolveWorkspaceRoot(cwd);

        const p = await Project.load(workspaceRoot);

        const w = new Workspace(p!);

        const {packages} = load(
            String(
                await fs.promises.readFile(join(workspaceRoot, Workspace.configFile))
            )
        ) as {
            packages?: string[];
        };

        if (packages) {
            const packageJSONs = await globby(
                packages.map((b) => join(b, Project.configFile)),
                {
                    cwd: workspaceRoot
                }
            );

            for (let packageJSON of packageJSONs) {
                const project = await Project.load(
                    join(workspaceRoot, dirname(packageJSON))
                );

                if (project) {
                    if (Project.isDartProject(project.info.name)) {
                        w.projects.set(project.info.name, project);
                    }
                }
            }
        }

        return w;
    }

    projects = new Map<string, Project>();

    constructor(public project: Project) {
    }

    resolveProjectVersion = (projectName: string) => {
        const found = this.projects.get(projectName);

        if (found) {
            return found.info.version ?? "0.0.0";
        }

        return undefined;
    };

    resolveProjectRoot = (projectName: string) => {
        return this.projects.get(projectName)?.root;
    };

    async applyDartConfiguration(project: Project) {
        await this.apply(
            join(project.root, "pubspec.yaml"),
            project.configPubspec(this.project, this.resolveProjectVersion),
            true,
        );

        await this.apply(join(project.root, "pubspec_overrides.yaml"), project.configPubspecOverrides(this.resolveProjectRoot));
        await this.apply(join(project.root, "build.yaml"), project.configBuild());
    }

    async apply(filename: string, v: any, merging = false) {
        if (v) {
            let prev: Record<string, any> = {};
            if (merging) {
                prev = load(String(await fs.promises.readFile(filename, v))) as {};
                v = merge(prev, v);
            }
            await fs.promises.writeFile(filename, dump(v));
            return;
        }

        try {
            await fs.promises.unlink(filename);
        } catch (e) {
        }
    }
}

const resolveWorkspaceRoot = async (from: string): Promise<string> => {
    const configFile = join(from, Workspace.configFile);
    try {
        await fs.promises.access(configFile, fs.constants.R_OK);
        return from;
    } catch (_) {
        return await resolveWorkspaceRoot(join(from, "../"));
    }
};
