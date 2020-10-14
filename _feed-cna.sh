#!/bin/bash

git pull

ruby -r rubygems -e 'require "jekyll-import"; JekyllImport::Importers::RSSCNA.run({"source"=>"https://feedx.net/rss/cna.xml"})'

if [ "$(uname -s)" == "Darwin" ]; then
    archCNA=`date -j -v-7d "+%Y-%m-%d"`-CNA-
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    archCNA=`date --date="-7 days" +%Y-%m-%d`-CNA-
elif [ "$(expr substr $(uname -s) 1 5)" == "MINGW" ]; then
    archCNA=`date --date="-7 days" +%Y-%m-%d`-CNA-
fi

timestamp=`date "+%Y-%m-%d %H:%M"`

mv _posts/$archCNA* _posts/_archive/.

git add _posts/.
git commit _posts/. -m "Update CNA $timestamp"
git push

