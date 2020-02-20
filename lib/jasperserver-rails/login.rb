require 'fileutils'
require 'uri'
require 'rest-client'
module JasperserverRails
  class Login
    def initialize(cookies = nil)
      @cookies = cookies
    end

    def cookies
      @cookies ||= RestClient.post(url, params).cookies
    end

    private

    def config
      JasperserverRails.config.server
    end

    def params
      {
        j_username: config[:username],
        j_password: config[:password]
      }
    end

    def path
      config[:url_login]
    end

    def url
      URI.join(config[:url], path).to_s
    end
  end
end
