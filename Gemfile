source "https://rubygems.org"
# Update gems with `bundle install`. Run Jekyll with `bundle exec`, like:
#     bundle exec jekyll serve

# This will help ensure the proper Jekyll version is running.
gem "jekyll", "~> 4.0.0"

# This is the default theme for new Jekyll sites. You may change.
gem "minima", "~> 2.5"
gem "rake", "~> 13.0"

# If you want to use GitHub Pages, remove the "gem "jekyll"" above and
# uncomment the line below. To upgrade, run `bundle update github-pages`.
#gem "github-pages", group: :jekyll_plugins

# If you have any plugins, put them here!
group :jekyll_plugins do
  gem "html-proofer"
  gem "jekyll-data"
  gem "jekyll-feed"
  gem "jekyll-gist"
  gem "jekyll-paginate"
  gem "jekyll-sitemap"
  gem "jemoji"
end

# Windows and JRuby does not include zoneinfo files, 
# so bundle the tzinfo-data gem and associated library.
install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  gem "tzinfo"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", :install_if => Gem.win_platform?
