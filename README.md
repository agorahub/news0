---
layout: page
title:  NEWS Zero
permalink: /readme/
---

Read RSS news on demand.

> 時逢COVID-19疫期，請[【按需】](https://github.com/agorahub/_meta/issues/4)聯絡管理員更新訂閱。

## Import and Bundle

```
# Edit local gem 'jekyll-import' to configure the post format:
# .../gems/jekyll-import-0.19.1/lib/jekyll-import/importers/rss.rb

# Import RSS feeds and commit posts back:
$ ./_feed.sh

# Edit _config.yml for local bundle test:
$ gem install bundler jekyll
$ bundle exec jekyll serve
# => Now browse to http://localhost:4000

# Edit _config.yml for production bundle:
$ JEKYLL_ENV=production bundle exec jekyll build
# Copy the compiled codes from _site/ to your html server.
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

