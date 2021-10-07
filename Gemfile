source "https://rubygems.org"
# Update gems with `bundle install`. Run Jekyll with `bundle exec`, like:
#     bundle exec jekyll serve

# This will help ensure the proper Jekyll version is running.
gem "jekyll", "~> 4.0.0"

# This is the default theme for new Jekyll sites. You may change.
gem "minima", "~> 2.5"

# Windows and JRuby does not include zoneinfo files, 
# so bundle the tzinfo-data gem and associated library.
install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  gem "tzinfo"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", :install_if => Gem.win_platform?
