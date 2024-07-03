# frozen_string_literal: true

require_relative 'database_configuration'

module LeadsEngine
  class ApplicationConfiguration
    attr_reader :database

    def initialize
      @database = DatabaseConfiguration.new
    end
  end
end
