#! /bin/bash

if [ "$#" -ne 2 ]; then
    echo "Incorrect number of parameters"
    echo Usage: "$0 hot version              OR"
    echo "       $0 rel[ease] version        OR"
    echo "       $0 fea[ture] branch-name"
    exit
fi

case "$1" in
  hot)
    echo Doing a hotfix with version $2
    git pull
    git checkout master
    git merge --squash hotfix-$2
    ;;
  rel*)
    echo "# Check out the development branch"
    git checkout development
    git checkout -b release-$2
    echo "# Replace version with " $2
    sed -i.bak 's/\"version\": \"[0-9]*\.[0-9]*\.[0-9]*\"/\"version\": \"'$2'\"/' package.json 
    echo "Version replaced in package.json: " `grep version package.json`
    git add package.json
    git commit -m 'Create release branch '$2
    git checkout master
    git merge release-$2
    git push origin master
    git checkout development
    git merge release-$2
    git push origin development
    git branch -d release-$2
    echo here we go
    ;;
  fea*)
    echo arelease
    echo here we go
    ;;
  *)
    echo Unknown command $1
    ;;
esac



