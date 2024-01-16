#!/bin/bash

files=`ls x*`


for f in $files
do
    echo "uploading $f" 
    curl -kX POST -H "Content-Type: application/json" --data-binary @$f "$ES/_bulk?pipeline=elser-v1-test"
done