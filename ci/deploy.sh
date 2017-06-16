#!/bin/env sh

echo "Triggering builds for branch '$TRAVIS_BRANCH'"
curl -H "Content-Type: application/json" --data "{\"source_type\": \"Branch\", \"source_name\": \"$TRAVIS_BRANCH\"}" -X POST https://registry.hub.docker.com/u/camiloruiiz/docker-gulp/trigger/$DOCKER_TOKEN/
