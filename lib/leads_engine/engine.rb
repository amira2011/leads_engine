require_relative 'application_configuration'

module LeadsEngine
  

  class Engine < ::Rails::Engine
    isolate_namespace LeadsEngine
    config.application = LeadsEngine::Configuration::ApplicationConfiguration.new

    def self.table_name_prefix
      config.application.database.table_name_prefix
    end
  end
end
