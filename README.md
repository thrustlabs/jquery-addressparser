# jquery-addressparser

A simple jquery plugin to parse address information into component parts.  It's
in use over at [Barnivore](http://barnivore.com/) where we input a lot of
addresses.

At present it's optimized for North America; other address formats will be
supported as we hammer the bugs out in production.

## Installation/Usage

Include the lib/bin/jquery-addressparser.min.js file in your HTML page, then
attach the plugin to a textarea, indicating which other inputs to populate
with the address components:

    $('#rawAddress').addressparser({
            name: '#name',
            address: '#address',
            city: '#city',
            province: '#province',
            postal: '#postal',
            country: '#country',
            phone: '#phone',
            email: '#email',
            website: '#website'
          }); 

Sample usage is in the demo folder.

## Dependencies

The current build environment requires the following:

* [CoffeeScript](http://coffeescript.org/) to compile the code
* [UglifyJS](https://github.com/mishoo/UglifyJS) to minimize the library
* [Watchr](https://github.com/mynyml/watchr) (optional) to auto-build and test (for OS X, "watchr watchr" starts the monitor)

## Bugs

I'm sure there are several :)

## Acknowledgements

The folder structure and build system was based on other projects 
around the internet, but initially/primarily [CoffeeScript Koans](https://github.com/sleepyfox/coffeescript-koans)

## License

jquery-addressparser is released under the MIT License:

    Copyright 2013 Jason Doucette, Thrust Labs
 
    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.