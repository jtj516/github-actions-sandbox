publish:
	git add .
	git commit -m "auto publish - no version increment"
	git tag -a -m "auto publish" v0.0.1
	git push --follow-tags