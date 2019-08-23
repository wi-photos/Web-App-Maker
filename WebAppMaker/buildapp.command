#!/bin/bash
cd "${0%/*}"
unzip WebApp.zip -d ~/Downloads
cd ~/Downloads
for i in "$@"
do
case $i in
-n=*|--name=*)
NAME="${i#*=}"
echo ${NAME} >> WebApp.app/Contents/Resources/title.txt
perl -p -i -e 's/\R//g;'   WebApp.app/Contents/Resources/url.txt

;;
-u=*|--url=*)
URL="${i#*=}"
echo ${URL} >> WebApp.app/Contents/Resources/url.txt
perl -p -i -e 's/\R//g;'  WebApp.app/Contents/Resources/url.txt

;;
#-l=*|--lib=*)
#DIR="${i#*=}"
#;;
#--default)
#DEFAULT=YES
#;;
*)
# unknown option
;;
esac
done
#echo PREFIX = ${PREFIX}
#echo SEARCH PATH = ${SEARCHPATH}
#echo DIRS = ${DIR}
#echo DEFAULT = ${DEFAULT}
