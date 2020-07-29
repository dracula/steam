#!/bin/bash
echo "Installing CSS…"

originalfile="../../steamui/css/libraryroot.css"
copiedfile="../../steamui/css/steamlibraryroot.css"

#stores word count of originalfile
originalfilesize=$(wc -c $originalfile | awk '{print $1}')

if [ $originalfilesize -gt 100 ] ; then
  #checks if libraryroot.css is from steam and copies it if true
  echo "renaming libraryroot.css"
  mv $originalfile $copiedfile

else 
  #if the original libraryroot.css is not there an error occured
  if [ ! -e $copiedfile ] ; then
    echo "The original libraryroot.css file is missing"
    echo "Pls remove all files in /steamui/css/ and start steam without flags to regain missing files"
  fi
fi

cd css/

echo "copying custom css files into steamui/css"

for f in *.css
do
  cp "$f" ../../../steamui/css/
done

echo "successful copied custom css files"
