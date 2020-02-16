---
layout: page
title:  README
permalink: /readme/
---

Read RSS news on demand.

> 時逢COVID-19疫期，請[【按需】](https://github.com/agorahub/_meta/issues/4)聯絡管理員更新訂閱。

## Import, Bundle and Deploy

```
# Edit local gem 'jekyll-import' to configure the post format.
$ vim .../gems/jekyll-import-0.19.1/lib/jekyll-import/importers/rss.rb

# Import posts from RSS feeds.
$ ruby -r rubygems -e 'require "jekyll-import"; JekyllImport::Importers::RSS.run({"source"=>"X"})'

# X:
#   http://rthk9.rthk.hk/rthk/news/rss/c_expressnews_clocal.xml
#   http://rthk9.rthk.hk/rthk/news/rss/c_expressnews_greaterchina.xml
#   http://rthk9.rthk.hk/rthk/news/rss/c_expressnews_cinternational.xml
#   http://rthk9.rthk.hk/rthk/news/rss/c_expressnews_cfinance.xml
#   http://rthk9.rthk.hk/rthk/news/rss/c_expressnews_csport.xml

$ gem install bundler jekyll
$ bundle exec jekyll serve
# => Now browse to http://localhost:4000

# Edit _config.yml for production deployment
$ JEKYLL_ENV=production bundle exec jekyll build
# Deploy compiled contents in the _site to your html server
```

## Disclaimer

The information and opinions within this website are for information purposes only. They are not intended to constitute legal or other professional advice, and should not be relied on or treated as a substitute for specific advice relevant to particular circumstances. We accept no responsibility for any errors, omissions or misleading statements on this website, or for any loss which may arise from reliance on materials contained on this website. Certain parts of this site may link to external Internet sites, and other external Internet sites may link to this website. We are not responsible for the content of any external Internet sites.




<!--
Jekyll also offers powerful support for code snippets:

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}
-->

