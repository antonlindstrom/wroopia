# Loading configuration
#
# Configuration for API user
module Loopia
  class Config

    # This is where the configuration is stored
    CONFIG_FILE = "#{ENV['HOME']}/.loopia.config"

    # Initialize config, create and load data
    #
    # Returns loaded data
    def initialize
      create_config unless File.exists?(config_file)
      load_settings
      set_domain
    end

    # Configfile
    #
    # Returns the config
    def config_file
      CONFIG_FILE
    end

    # Allow to access settings
    attr_reader :settings

    # Reading from config file
    #
    # Returns hash with configuration settings
    def load_settings
      @settings = YAML::load(File.new(config_file, 'r'))
    end

    # Domain
    #
    # Returns domain name
    def domain
      @domain
    end

    # Set a domain that should be used
    #
    # String - domain can be set by persistent or mem
    #
    # Returns domain name
    def set_domain(domain=@settings['default_domain'])
      @domain = domain
    end

    private
    
    # Create configuration file with default values
    #
    # Returns File.open status 
    def create_config
      FileUtils.touch(config_file)
      
      @settings = {
        'username'       => 'username@loopiaapi',
        'password'       => 'password',
        'remote'         => 'https://api.loopia.se/RPCSERV',
        'default_domain' => 'example.com',
        'verbose'        => 'true' 
      }

      File.open(config_file, 'w' ) { |f| YAML.dump(@settings, f) }
    end

  end
end
