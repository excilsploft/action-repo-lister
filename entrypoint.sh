#!/bin/sh -l

BIN_DOWNLOAD=linux-amd64-repol.zip
if [ ! -e $BIN_DOWNLOAD ]
then
	echo "downloading repol"
	wget --no-check-certificate --content-disposition  https://github.com/excilsploft/repo-lister/releases/download/v0.0.3/${BIN_DOWNLOAD}
else 
	echo "found ${BIN_DOWNLOAD}"
	ls -lah ${BIN_DOWLNLOAD}
fi
unzip ${BIN_DOWNLOAD}
ls -lah 
repo_yaml=$(repol)
echo "::set-output name=repo_yaml::$repo_yaml"
