#!/bin/bash

git pull

ruby -r rubygems -e 'require "jekyll-import"; JekyllImport::Importers::RSS.run({"source"=>"http://rthk9.rthk.hk/rthk/news/rss/c_expressnews_clocal.xml"})'
ruby -r rubygems -e 'require "jekyll-import"; JekyllImport::Importers::RSS.run({"source"=>"http://rthk9.rthk.hk/rthk/news/rss/c_expressnews_greaterchina.xml"})'
ruby -r rubygems -e 'require "jekyll-import"; JekyllImport::Importers::RSS.run({"source"=>"http://rthk9.rthk.hk/rthk/news/rss/c_expressnews_cinternational.xml"})'
ruby -r rubygems -e 'require "jekyll-import"; JekyllImport::Importers::RSS.run({"source"=>"http://rthk9.rthk.hk/rthk/news/rss/c_expressnews_cfinance.xml"})'

if [ "$(uname -s)" == "Darwin" ]; then
    archstamp=`date -j -v-7d "+%Y-%m-%d"`
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    archstamp=`date --date="-7 days" +%Y-%m-%d`
elif [ "$(expr substr $(uname -s) 1 5)" == "MINGW" ]; then
    archstamp=`date --date="-7 days" +%Y-%m-%d`
fi

timestamp=`date "+%Y-%m-%d %H:%M"`

mv _posts/$archstamp* _posts/_archive/.

git add _posts/.
git commit _posts/. -m "Update $timestamp"
git push

