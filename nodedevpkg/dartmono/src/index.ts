import { Workspace } from "./Workspace";

(async () => {
  const w = await Workspace.load(process.cwd());

  for (const [, project] of w.projects) {
    await w.applyDartConfiguration(project);
  }
})();