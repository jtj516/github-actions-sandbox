echo $(git describe | cut -d'-' -f1 | cut -d'.' -f1-3)