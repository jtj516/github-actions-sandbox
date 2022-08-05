wip-publish:
	npm run build
	git add .
	git commit -m "wip - auto publish"
	git tag -a -m "wip - auto publish" $(shell ./increment_patch.sh)
	git push --follow-tags
	$(shell ./update_workflow_version.sh)

run: 
	npm run build
	act -v