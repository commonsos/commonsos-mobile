#!/bin/bash

pushd ../commonsos-web
npm run build-mobile
popd

echo "Copying web resources to cordova.."

cp -r ~/work/commonsos-web/dist/* www/

echo "Distributing web resources to supported platforms"

cordova prepare $1
cordova build $1
