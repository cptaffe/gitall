#!/bin/bash

# save repository names

REPONAMES="$(curl -u cptaffe 'https://api.github.com/users/cptaffe/repos' | grep "\"name\": " | sed -r 's/"name": "(.*)"/\1/' | sed s/,//)"

for name in $REPONAMES
do
	git clone "http://github.com/cptaffe/$name"
done
