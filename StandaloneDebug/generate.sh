#!/bin/bash
FOLDER=../$1
BASE=$2
BROWSER=$3
VERSION=$4

rm -rf $FOLDER
mkdir -p $FOLDER

echo FROM selenium/$BASE:$VERSION > $FOLDER/Dockerfile
cat ../NodeDebug/Dockerfile.txt >> $FOLDER/Dockerfile

cp -p ./entry_point.sh $FOLDER
