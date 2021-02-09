---
layout: page
title:  NEWS⓪
permalink: /readme/
comments_repo: agorahub/news0
comments_id: 3
---

> This branch has been no longer updated. Please visit the news0 at https://agora0.gitlab.io/news, or its landing page at https://agorahub.github.io/news0.

Read RSS news on demand.

| Source | Importer  | Update |
| ------ | --------- | ------ |
| RTHK   | RSSRTHK   | 5/Day  |
| CNA    | RSSCNA    | 4/Day  |

## Test and Deploy

```
$ gem install bundler jekyll 
$ vim _config.yml # Configure to test or deploy.

$ bundle exec jekyll serve
# => Now browse to http://localhost:4000

$ JEKYLL_ENV=production bundle exec jekyll build
# Copy the compiled codes from _site/ to html server.
```

## Import and Commit

```
$ cd .../gems/jekyll-import-{version}/lib/jekyll-import/importers/
$ vim rssrthk.rb rsscna.rb # Customize importers.

$ ./_feed.sh  # Batch import and commit posts.
```

## List of Features

- [x] Batch and Automate - Check out the [issue comment](https://github.com/agorahub/news0/issues/1#issuecomment-597540617)

{% include comments.html %}

## Disclaimer

The information and opinions within this website are for information purposes only. They are not intended to constitute legal or other professional advice, and should not be relied on or treated as a substitute for specific advice relevant to particular circumstances. We accept no responsibility for any errors, omissions or misleading statements on this website, or for any loss which may arise from reliance on materials contained on this website. Certain parts of this site may link to external Internet sites, and other external Internet sites may link to this website. We are not responsible for the content of any external Internet sites.

