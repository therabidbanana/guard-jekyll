## What?
Packages your javascript files together when you save your source file.

## Use
if you haven't already `gem install sprockets`  
then `gem install guard-sprockets`  
in your project's directory root  
`guard init`  
`guard init sprockets`  

which will add this to your Guardfile  

    guard 'sprockets', :destination => "public/javascripts" do
      watch (%r{app/assets/javascripts/application.js})
    end

change the destination to your public facing javascript directory and the `watch` regex to point at where your source javascript file is.  

The base configuration would work for a rails 3 project with a directory structure like  
        
    |-- app
    |   |-- controllers
    |   |-- assets
    |   |   |-- sass
    |   |   `-- javascripts
    |   |       `-- application.js # your source javascript file 
    |   |-- helpers
    |   |-- mailers
    |   |-- models
    |   `-- views
    |       `-- layouts
    |-- config
    |   |-- environments
    |   |-- initializers
    |   `-- locales
    |-- db
    |-- doc
    |-- lib
    |   `-- tasks
    ... etc.

## TODO
tests

## License
(The MIT License)

Copyright (c) 2011 Aaron Cruz

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.