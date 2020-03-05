#!/bin/bash

git pull

ruby -r rubygems -e 'require "jekyll-import"; JekyllImport::Importers::RSS.run({"source"=>"http://rthk9.rthk.hk/rthk/news/rss/c_expressnews_clocal.xml"})'
ruby -r rubygems -e 'require "jekyll-import"; JekyllImport::Importers::RSS.run({"source"=>"http://rthk9.rthk.hk/rthk/news/rss/c_expressnews_greaterchina.xml"})'
ruby -r rubygems -e 'require "jekyll-import"; JekyllImport::Importers::RSS.run({"source"=>"http://rthk9.rthk.hk/rthk/news/rss/c_expressnews_cinternational.xml"})'
ruby -r rubygems -e 'require "jekyll-import"; JekyllImport::Importers::RSS.run({"source"=>"http://rthk9.rthk.hk/rthk/news/rss/c_expressnews_cfinance.xml"})'

archstamp=`date --date="7 days ago" +%Y-%m-%d`
timestamp=`date "+%Y-%m-%d %H:%M"`
mv _posts/$archstamp* _posts/_archive/.
git add _posts/.
git commit _posts/. -m "Update $timestamp"
git push

