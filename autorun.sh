#!/bin/bash

echo "BEGIN: CALIBRE-RECIPE CONVERTION"

SCRIPT=`readlink -f $0`
SCRIPT_PATH=`dirname $SCRIPT`
PHPSCRIPT=`which php`
CALIBRE_PATH=`which calibre`
EBOOK_CONVERTER_PATH=`which ebook-convert`
EBOOK_VIEWER_PATH=`which ebook-viewer`
if [ $# -eq 0 ]   
then  
 echo "Usage: $0 <convert.recipe> "   
 exit 1  
fi 

if [ $1 ]
then
 FILENAME=`echo $1|cut -d '.' -f 1`
 FILETYPE=`echo $1|cut -d '.' -f 2`
 #echo $FILENAME
 SOURCE=$FILENAME."mobi"
 if [ "$FILETYPE"x = "recipe"x ]
 then
  ebook-convert $1 $SOURCE
 else
  echo "Filetype must be 'recipe' format"
  exit 1
 fi
 NUM=`ls $SOURCE|wc -l` 
 if [ $NUM -eq 1 ]
 then
  ebook-viewer $SOURCE
  echo "END CONVERTION"
 else
  echo "Convert problem occurs" 
  exit 1
 fi 
else
 echo "DONE"
 exit 1
fi
