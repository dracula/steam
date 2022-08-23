#!/bin/bash
echo "Installing CSS…"

declare -a originalfiles=( "../../steamui/css/1010.css" "../../steamui/css/library.css" )
declare -a copiedfiles=( "../../steamui/css/steam1010.css" "../../steamui/css/steamlibrary.css" )

for i in "${!originalfiles[@]}"; do

  #stores word count of originalfile
  originalfilesize=$(wc -c ${originalfiles[i]} | awk '{print $1}')
  if [ $originalfilesize -gt 100 ] ; then
    echo "renaming css files"
    mv ${originalfiles[i]} ${copiedfiles[i]}

  else 
    #if the original libraryroot.css is not there an error occured
    if [ ! -e ${copiedfiles[i]} ] ; then
      echo "The original ${originalfiles[i]} file is missing"
      echo "Pls remove all files in /steamui/css/ and start steam without flags to regain missing files"
    fi
  fi

done

cd css/

echo "copying custom css files into steamui/css"

for f in *.css
do
  cp "$f" ../../../steamui/css/
done

echo "successful copied custom css files"
