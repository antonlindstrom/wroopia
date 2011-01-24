# DNS Methods for Loopia API
# Documentation is at respective link
# The data is just sent to the API
module Loopia
  class DNS

    #
    # API Methods
    #
    
    # https://www.loopia.se/api/getdomain/ 
    def get_domain
      Loopia.base.send('getDomain', Loopia.config.domain)
    end

    # https://www.loopia.se/api/getdomains/
    def get_domains
      Loopia.base.send('getDomains', Loopia.config.domain)
    end

    # https://www.loopia.se/api/adddomaintoaccount/
    def add_domain
      Loopia.base.send('addDomainToAccount', Loopia.config.domain, true)
    end
    
    # https://www.loopia.se/api/adddomaintoaccount/
    def remove_domain(at_expire)
      Loopia.base.send('removeDomain', Loopia.config.domain, at_expire)
    end
    
    # https://www.loopia.se/api/getsubdomains/
    def get_subdomains
      Loopia.base.send('getSubdomains', Loopia.config.domain)
    end

    # https://www.loopia.se/api/addsubdomain/
    def add_subdomain(subdomain)
      Loopia.base.send('addSubdomain', Loopia.config.domain, subdomain)
    end
    
    # https://www.loopia.se/api/addsubdomain/
    def remove_subdomain(subdomain)
      Loopia.base.send('removeSubdomain', Loopia.config.domain, subdomain)
    end

    # https://www.loopia.se/api/getzonerecords/
    def get_zonerecords(subdomain)
      Loopia.base.send('getZoneRecords', Loopia.config.domain, subdomain)
    end

    # https://www.loopia.se/api/addzonerecord/
    def add_zonerecord(subdomain, record)
      Loopia.base.send('addZoneRecord', Loopia.config.domain, subdomain, record)
    end

    def remove_zonerecord(subdomain, record_id)
      Loopia.base.send('removeZoneRecord', Loopia.config.domain, subdomain, record_id)
    end

    def update_zonerecord(subdomain, record_object)
      Loopia.base.send('updateZoneRecord', Loopia.config.domain, subdomain, record_object)
    end

    #
    # API Structures
    #

    # https://www.loopia.se/api/record_obj/
    # Constructs a hash from values
    def record_object(type, ttl, priority, rdata, record_id)
      record = {
        'type'      => type,
        'ttl'       => ttl,
        'priority'  => priority,
        'rdata'     => rdata,
        'record_id' => record_id
      }
    end

  end
end
