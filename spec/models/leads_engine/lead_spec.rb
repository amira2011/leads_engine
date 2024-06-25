require 'rails_helper'

module LeadsEngine
  RSpec.describe Lead, type: :model do
    context 'database connection' do
      it 'checks if the Lead model is connected to the database' do
        expect(ActiveRecord::Base.connection.table_exists?('leads')).to be_truthy
      end

      it 'creates a Lead record' do
        lead = Lead.create(name: 'John Doe', email: 'john.doe@example.com')
        expect(lead).to be_persisted
        expect(lead.name).to eq('John Doe')
        expect(lead.email).to eq('john.doe@example.com')
      end

      it 'reads a Lead record' do
        lead = Lead.create(name: 'Jane Doe', email: 'jane.doe@example.com')
        found_lead = Lead.find_by(email: 'jane.doe@example.com')
        expect(found_lead).not_to be_nil
        expect(found_lead.name).to eq('Jane Doe')
      end

      it 'updates a Lead record' do
        lead = Lead.create(name: 'John Smith', email: 'john.smith@example.com')
        lead.update(name: 'John K. Smith')
        expect(lead.reload.name).to eq('John K. Smith')
      end

      it 'deletes a Lead record' do
        lead = Lead.create(name: 'Jane Smith', email: 'jane.smith@example.com')
        expect { lead.destroy }.to change { Lead.count }.by(-1)
      end
    end
  end
end
