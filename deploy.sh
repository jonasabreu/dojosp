#! /bin/bash

jekyll || /var/lib/gems/1.8/bin/jekyll

DOMAIN=www.dojosp.org

cd _site;

typeFor(){
	TYPE=`echo $1 | sed -E "s/.+\.([^$]+)$/\1/"`
	CONTENT_TYPE="text/html"
	if [ $TYPE == "txt" ]; then CONTENT_TYPE="text/plain"; fi;
	if [ $TYPE == "xml" ]; then CONTENT_TYPE="application/xml"; fi;
	if [ $TYPE == "css" ]; then CONTENT_TYPE="text/css"; fi;
	if [ $TYPE == "js" ]; then CONTENT_TYPE="text/javascript"; fi;
	if [ $TYPE == "png" ]; then CONTENT_TYPE="image/png"; fi;
	if [ $TYPE == "gif" ]; then CONTENT_TYPE="image/gif"; fi;
}

for X in `find . -type f | sed -E "s/\.\///"`; do 
	echo "Deploying $X";
	typeFor $X
	~/bin/aws/aws put "x-amz-acl: public-read" "Content-Type: $CONTENT_TYPE" www.dojosp.org $X;
done;

curl "http://feedburner.google.com/fb/a/pingSubmit?bloglink=http%3A%2F%2Fwww.dojosp.org"
