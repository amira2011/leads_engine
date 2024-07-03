# frozen_string_literal: true

module LeadsEngine
  class DatabaseConfiguration
    attr_accessor :table_name_prefix

    def initialize
      @table_name_prefix = ''
    end
  end
end
