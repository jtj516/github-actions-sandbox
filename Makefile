publish:
	git add .
	git commit -m "auto publish"
	git tag -a -m "auto publish $(shell ./increment_patch.sh) "
	git push --follow-tags

#nextPatch=$(($(git describe | cut -d'-' -f1 | rev | cut -d'.' -f1) + 1)) && echo $nextPatch

#currentVersion=$(git describe | cut -d'-' -f1)

# echo $(git describe | cut -d'-' -f1 | cut -d'.' -f1-2)  .$(($(git describe | cut -d'-' -f1 | rev | cut -d'.' -f1) + 1))