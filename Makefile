publish:
	git add .
	git commit -m "auto publish"
	git tag -a -m "auto publish" @echo $("ggg")
#git push --follow-tags

#nextPatch=$(($(git describe | cut -d'-' -f1 | rev | cut -d'.' -f1) + 1)) && echo $nextPatch

#currentVersion=$(git describe | cut -d'-' -f1)

