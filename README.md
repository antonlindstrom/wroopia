## Ruby wrapper for Loopia API
This is a wrapper for [Loopia](https://www.loopia.se/api/). It is not fully tested (or at all)
but is in testing. If you would like to improve it, please do.

### Install
Supply your credentials in ~/.loopiaapi.config

### Examples
    pp Loopia.dns.getdomains
    pp Loopia.dns.add_subdomain("subdomain")
    pp Loopia.dns.getsubdomains

See the main.rb file for example

### Background
Background to this wrapper; [wroopia DNS API](http://antonlindstrom.com/2011/01/24/wroopia-dns-api.html).

### Thanks
Thanks to [Loopia](http://www.loopia.se) which has provided this fine API.
