publish:
	git add .
	git commit -m "auto publish"
	git tag -a -m "auto publish" $(shell echo "$(RELEASE)" | $(EGREP) -i -c "fc22.i686")
#git push --follow-tags

#nextPatch=$(($(git describe | cut -d'-' -f1 | rev | cut -d'.' -f1) + 1)) && echo $nextPatch

#currentVersion=$(git describe | cut -d'-' -f1)

