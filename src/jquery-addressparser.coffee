###
jquery-addressparser: an address parser plugin for jQuery

Version 1.0

https://github.com/thrustlabs/jquery-addressparser

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

###

# Reference jQuery
$ = jQuery
    
$.fn.extend
  addressparser: (options) ->
    self = $.fn.addressparser
    opts = $.extend {}, self.default_options, options
    $(this).each (i, el) ->
      self.init el, opts
 
$.extend $.fn.addressparser,
  opts: {}
  
  default_options: {}
  
  init: (el, opts) ->
    self.opts = opts

    $(el).bind('input propertychange', ->
      parser = new AddressParser
      parser.parse($(this).val())
      if opts.name
        $(opts.name).val(parser.name)
      if opts.address
        $(opts.address).val(parser.address)
      if opts.city
        $(opts.city).val(parser.city)
      if opts.province
        $(opts.province).val(parser.province)
      if opts.postal
        $(opts.postal).val(parser.postal)
      if opts.country
        $(opts.country).val(parser.country)
      if opts.phone
        $(opts.phone).val(parser.phone)
      if opts.email
        $(opts.email).val(parser.email)
      if opts.website
        $(opts.website).val(parser.website)                
    )    
  