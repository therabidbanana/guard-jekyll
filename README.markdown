# Guard::Jekyll

Guard::Jekyll automatically rebuilds websites with the [Jekyll static site generator](http://jekyllrb.com/) every time files are modified.

## Installation

Add this line to your application's Gemfile:

    gem 'guard-jekyll'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install guard-jekyll

## Usage

Enter the Jekyll site directory for which you want to use Guard::Jekyll. Create a Guardfile using:

    $ guard init jekyll

Then execute:

    $ guard

Whenever you change a file in the Jekyll site directory now, the site will be rebuilt!

## Options
* `:source` the source directory which jekyll reads files from (default `'./'`)
* `:destination` the directory where Jekyll will write files to (default is `'./_site'`)
* `:config` array of configuration files which jekyll will read (default `['./_config.yml']`)

## License

(MIT License)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
