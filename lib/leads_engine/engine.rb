module LeadsEngine
  def self.table_name_prefix
    Engine.config.application.database.table_name_prefix
  end

  class Engine < ::Rails::Engine
    isolate_namespace LeadsEngine
  end
end
