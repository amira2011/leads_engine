
module LeadsEngine
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
    connects_to database: { writing: :leads }
  end
end
