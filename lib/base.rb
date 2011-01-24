# Base class for interface with Loopia Domain API
module Loopia
  class Base

    # Middleman between send and rpc_call
    #
    # string - api_call identifies the api call
    # splat  - payload defines what should be sent to server
    #
    # Returns the respones from the RPC call
    def send(api_call, *payload)
      rpc_call(api_call, *payload)
    end
    
    private

    # Create a client
    #
    # Returns the XMLRPC client
    def rpc_client
      XMLRPC::Client.new2(Loopia.config.settings['remote'])
    end

    # Call the server
    #
    # string remote_call is the Loopia API call
    # splat  *send_args is the passed arguments from send 
    #
    # Returns the response
    def rpc_call(remote_call, *send_args)
      response = rpc_client.call(
        remote_call, 
        Loopia.config.settings['username'],
        Loopia.config.settings['password'], 
        *send_args
      )
    end

  end
end
