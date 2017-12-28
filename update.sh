#!/bin/sh
# A hardcode implementation :)
URL_PREFIX="https://raw.githubusercontent.com/Dogfalo/materialize/v1-dev/dist/"
URL_DIRS_SUFIXES=("css/" "fonts/roboto/" "js/")
CSS_FILENAMES=(materialize.css materialize.min.css)
ROBOTO_FONTS_FILENAMES=(
    "Roboto-Bold.woff"
    "Roboto-Bold.woff2"
    "Roboto-Light.woff"
    "Roboto-Light.woff2"
    "Roboto-Medium.woff"
    "Roboto-Medium.woff2"
    "Roboto-Regular.woff"
    "Roboto-Regular.woff2"
    "Roboto-Thin.woff"
    "Roboto-Thin.woff2"
)
JS_FILENAMES=("materialize.js" "materialize.min.js")

cd materialize/static/materialize

cd ${URL_DIRS_SUFIXES[0]}
for filename in "${CSS_FILENAMES[@]}"; do
    curl -O ${URL_PREFIX}${URL_DIRS_SUFIXES[0]}${filename}
done
cd ..

cd ${URL_DIRS_SUFIXES[1]}
for filename in "${ROBOTO_FONTS_FILENAMES[@]}"; do
    curl -O ${URL_PREFIX}${URL_DIRS_SUFIXES[1]}${filename}
done
cd ..
cd ..

cd ${URL_DIRS_SUFIXES[2]}
for filename in "${JS_FILENAMES[@]}"; do
    curl -O ${URL_PREFIX}${URL_DIRS_SUFIXES[2]}${filename}
done
cd ..

cd ..
cd ..
cd ..
