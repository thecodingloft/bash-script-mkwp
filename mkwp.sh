#!/usr/bin/bash

# create our variables
currentDir="$(pwd)"
templateDir=~/templates/webdev

# check if the template folder exists
if [ -d "$templateDir" ];
then
  echo "======"
  echo "$templateDir exists"
  echo "======"
else
  echo "======"
  echo "$templateDir does not exist - creating directory"
  mkdir -p $template && cd $templateDir && touch index.html style.css script.js
  echo "$templateDir created"
  echo "======"
fi

# check the arguments provided and create directory
if [ $# == 0 ];
then
  echo "$0: Please provide an argument - directory name"
  echo "======"
  exit 1;
elif [ $# -gt 1 ];
then 
  echo "======"
  echo "Too many arguments - just enter one directory name"
  echo "======"
  exit 1
elif [ $# == 1 ];
then
  echo "======"
  echo "current Directory: $currentDir"
  echo "copying template folder"
  cp -r $templateDir $currentDir/$1
  echo "folder copied to $currentDir"
  echo "name of the project $1"
  echo "happy coding!"
  echo "======="
  exit 1;
fi
