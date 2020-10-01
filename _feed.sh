#!/bin/bash

git pull

ruby -r rubygems -e 'require "jekyll-import"; JekyllImport::Importers::RSSRTHK.run({"source"=>"http://rthk9.rthk.hk/rthk/news/rss/c_expressnews_clocal.xml"})'
ruby -r rubygems -e 'require "jekyll-import"; JekyllImport::Importers::RSSRTHK.run({"source"=>"http://rthk9.rthk.hk/rthk/news/rss/c_expressnews_greaterchina.xml"})'
ruby -r rubygems -e 'require "jekyll-import"; JekyllImport::Importers::RSSRTHK.run({"source"=>"http://rthk9.rthk.hk/rthk/news/rss/c_expressnews_cinternational.xml"})'
ruby -r rubygems -e 'require "jekyll-import"; JekyllImport::Importers::RSSRTHK.run({"source"=>"http://rthk9.rthk.hk/rthk/news/rss/c_expressnews_cfinance.xml"})'

if [ "$(uname -s)" == "Darwin" ]; then
    archRTHK=`date -j -v-7d "+%Y-%m-%d"`-RTHK-
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    archRTHK=`date --date="-7 days" +%Y-%m-%d`-RTHK-
elif [ "$(expr substr $(uname -s) 1 5)" == "MINGW" ]; then
    archRTHK=`date --date="-7 days" +%Y-%m-%d`-RTHK-
fi

timestamp=`date "+%Y-%m-%d %H:%M"`

mv _posts/$archRTHK* _posts/_archive/.

git add _posts/.
git commit _posts/. -m "Update $timestamp"
git push

