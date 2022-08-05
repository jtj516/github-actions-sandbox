publish:
	npm run build
	git add .
	git commit -m "auto publish"
	git tag -a -m "auto publish" $(shell ./increment_patch.sh)
	git push --follow-tags
	$(shell ./update_workflow_version.sh)