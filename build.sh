#!/bin/bash

SKIP_ANGULAR_APP_BUILD=$1

buildAngular() {
  echo -e "Building ${1}"
  cd ${1}
  ./build.sh
  cd ..

  echo ""
}

ANGULAR_APP=web-app
CURRENT_FOLDER=$(pwd)

if [ "${SKIP_ANGULAR_APP_BUILD}" != "-n" ]
then
  cd ..
  buildAngular $ANGULAR_APP
  cd "$CURRENT_FOLDER"
else
  echo $'\n-----------------------------------------------'
  echo $'---- Skip building of Angular application -----'
  echo $'-----------------------------------------------\n'
fi

cd "$CURRENT_FOLDER"

echo $'\n-----------------------------------------------'
echo $'----------- Build docker containers -----------'
echo $'-----------------------------------------------\n'

cp .dockerignore "$CURRENT_FOLDER"/..
docker-compose -f docker-compose.yml -p bubnov build

echo "REMOVE ALL DANGLING IMAGES"
docker image prune -f

read -p "Press ENTER"
