#!/bin/bash

# save repository names
GITHUBUSER="$1"

REPONAMES="$(curl -u $GITHUBUSER 'https://api.github.com/users/cptaffe/repos' | grep "\"name\": " | sed -r 's/"name": "(.*)"/\1/' | sed s/,//)"

for name in $REPONAMES
do
	git clone "http://github.com/$GITHUBUSER/$name"
done
