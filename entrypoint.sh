#!/bin/sh -l

BIN_DOWNLOAD=linux-amd64-repol.zip
wget --no-check-certificate --content-disposition  https://github.com/excilsploft/repo-lister/releases/download/v0.0.3/${BIN_DOWNLOAD}

unzip ${BIN_DOWNLOAD}

repo_yaml=$(./repol)
echo "::set-output name=repo_yaml::$repo_yaml"
