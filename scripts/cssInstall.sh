#!/bin/bash

./moveOriginalCSS.sh

cd ../css/

for f in *.css
do
  cp "$f" ../../../steamui/css/
done
