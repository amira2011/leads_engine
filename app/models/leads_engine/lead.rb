module LeadsEngine
  class Lead < ApplicationRecord
    self.table_name = "leads"

    validates :name , presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  end
end
