TURBO = pnpm exec turbo

dep: bootstrap
	pnpm i -d
	$(TURBO) run dep

bootstrap:
	pnpm i
	pnpm exec tsx ./nodedevpkg/dartmono/src/index.ts

clean: clean.dart clean.node

clean.dart:
	$(TURBO) run clean

clean.node:
	find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;

gen:
	$(TURBO) run gen

test:
	$(TURBO) run test

pub:
	pnpm -r publish --no-git-checks