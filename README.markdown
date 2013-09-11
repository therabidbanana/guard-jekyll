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

You can provide these options to Guard::Jekyll:

* `:source` the source directory which Jekyll reads files from.
* `:destination` the directory where Jekyll will write files to.
* `:config` array of configuration files for Jekyll.

Without options, Jekyll will use its built-in defaults.

## License

(MIT License)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
