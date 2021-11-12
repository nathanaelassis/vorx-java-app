#!/bin/bash
echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u vcavalcanti -p $PASS

echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG vcavalcanti/$IMAGE:$BUILD_TAG

echo "*** Pushing image ***"
docker push vcavalcanti/$IMAGE:$BUILD_TAG

