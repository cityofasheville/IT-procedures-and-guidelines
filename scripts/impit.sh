#! /bin/bash -v

if [ "$#" -ne 2 ]; then
    echo "Incorrect number of parameters"
    echo Usage: "$0 hot version              OR"
    echo "       $0 rel[ease] version        OR"
    echo "       $0 fea[ture] branch-name"
    exit
fi

case "$1" in
  tst)
    echo Running test
    LASTREL=`git describe --tags --abbrev=0`
    echo 'LAST RELEASE: '$LASTREL
    RN=`git log $LASTREL..HEAD --oneline --grep=AVL-RN | sed 's/[a-zA-Z0-9]* AVL-RN:?/\-/' | sed '1 i Release Notes:' | sed '1 i Release '${2}''`
    git tag -a -m "${RN}" $2
    ;;
  hot)
    echo "# Release a hot fix"
    echo Not yet implemented
    ;;
  rel*)
    echo "# Check out the development branch"
    git checkout master
    git pull origin master
    git checkout development
    git pull origin development
    git checkout -b release-$2
    echo "# Bump to new version " $2
    sed --in-place 's/\"version\": \"[0-9]*\.[0-9]*\.[0-9]*\"/\"version\": \"'$2'\"/' package.json 
    git add package.json
    git commit -m 'Create release branch '$2
    git checkout master
    git merge release-$2 -m 'Merge release '$2
    git push origin master
    echo "# Create release with release notes"
    LASTREL=`git describe --tags --abbrev=0`
    echo '# LAST RELEASE: '$LASTREL
    RN=`git log $LASTREL..HEAD --oneline --grep=AVL-RN | sed 's/[a-zA-Z0-9]* AVL-RN:?/\-/' | sed '1 i Release Notes:' | sed '1 i Release '${2}''`
    git tag -a -m "${RN}" $2
    git push --tags origin master
    git checkout development
    git merge release-$2 -m 'Merge release '$2
    git push origin development
    git branch -d release-$2
    echo "# Done with release $2"
    ;;
  fea*)
    echo "# Merge a feature branch"
    echo Not yet implemented
    ;;
  *)
    echo Unknown command $1
    ;;
esac



