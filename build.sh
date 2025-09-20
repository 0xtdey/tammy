#!/bin/bash
set -e

echo "Setting up environment..."
export LANG=C.UTF-8
export LC_ALL=C.UTF-8
export RUBY_LOCALE=C.UTF-8

echo "Installing Ruby and Bundler..."

# Install Ruby if not present
if ! command -v ruby &> /dev/null; then
    echo "Ruby not found, installing..."
    curl -sSL https://get.rvm.io | bash -s stable
    source ~/.rvm/scripts/rvm
    rvm install ruby-$(cat .ruby-version)
    rvm use ruby-$(cat .ruby-version) --default
fi

# Install bundler if not present
if ! command -v bundle &> /dev/null; then
    gem install bundler
fi

echo "Installing dependencies..."
bundle install

echo "Building Jekyll site..."
bundle exec jekyll build --verbose

echo "Build complete!"
