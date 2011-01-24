## Ruby wrapper for Loopia API
This is a wrapper for [Loopia](https://www.loopia.se/api/). It is not fully tested (or at all)
but is in testing. If you would like to improve it, please do.

#### Examples
    pp Loopia.dns.getdomains
    pp Loopia.dns.add\_subdomain("subdomain")
    pp Loopia.dns.getsubdomains

See the main.rb file for example
