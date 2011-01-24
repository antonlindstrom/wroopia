# Settings for accounts
# This class is not tested!
module Loopia
  class User

    # Create a new account with defined values
    #
    # Returns API result
    def create_new_account(domain, contact_object)
      Loopia.base.send(
        'createNewAccount',
        domain,
        contact_object,
        billing_contact_reseller = true,
        tech_contact_reseller = true,
        buy_domain = true,
        domain_configuration = "HOSTING_UNIX", 
        account_type = "HOSTING_BUSINESS",
        end_user_has_accepted_terms = true
      )
    end

    # Inserts and checks input hash
    #
    # Hash - contact_hash, contains user data
    #
    # Returns the insert ready contact_hash
    def contact(contact_hash)
      contact_hash
    end

    # Example of contact_object
    def contact_example
      contact = {'firstname' => 'Anders',
        'lastname' => 'Andersson',
        'company' => 'Loopia AB',
        'street' => 'Kopparlundsvägen 7B',
        'street2' => '',
        'zip' => '72130',
        'city' => 'Västerås',
        'country_iso2' => 'se',
        'orgno' => '556633-9304',
        'phone' => '021-128222',
        'cell' => '',
        'fax' => '',
        'email' => 'info@loopia.se'}
    end

  end
end
