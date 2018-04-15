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
    echo arelease
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



