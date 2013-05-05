# Guard::Jekyll

This is a guard for [jekyll](http://jekyllrb.com/).

## Installation

Add this line to your application's Gemfile:

    gem 'guard-jekyll'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install guard-jekyll

## Usage

Enter the jekyll site directory for which you want to use Guard::Jekyll. Create a Guardfile using `guard init`:

    $ guard init jekyll

Execute guard:

    $ guard

Whenever you change a file in the jekyll site directory now, the site will be rebuilt!

## Options
* `:source` the source directory which jekyll reads files from (default `'./'`)
* `:destination` the directory where Jekyll will write files to (default is `'./_site'`)
* `:config` array of configuration files which jekyll will read (default `['./_config.yml']`)
