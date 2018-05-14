require 'jasperserver-rails/engine'
require 'jasperserver-rails/configuration'
require 'jasperserver-rails/base'
require 'jasperserver-rails/login'
require 'jasperserver-rails/report'
require 'jasperserver-rails/report_execution'
require 'jasperserver-rails/report_execution_details'

module JasperserverRails
  class << self
    def configure
      @config = Configuration.new
      yield config
    end

    def config
      @config ||= Configuration.new
    end
  end
end
