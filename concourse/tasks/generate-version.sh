#!/bin/bash

echo "Starting to exec"

VERSION=1.0.0.M1-`date +%Y%m%d_%H%M%S`-VERSION
MESSAGE="[Concourse CI] Bump to Next Version ($VERSION)"

cd out

echo "$(ls -al)"

cp -r ../version/. ./
echo "Bump to ${VERSION}"
echo "${VERSION}" > version

git config --global user.email "${GIT_EMAIL}"
git config --global user.name "${GIT_NAME}"
git add version
git commit -m "${MESSAGE}"
