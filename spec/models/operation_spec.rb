require 'rails_helper'

RSpec.describe Operation, type: :model do
  let(:user) { User.create(name: 'User') }
  let(:operation) { Operation.create(name: 'Operation', amount: 100, user:) }
  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(operation).to be_valid
    end
    it 'is not valid without a name' do
      operation.name = nil
      expect(operation).to_not be_valid
    end
    it 'is not valid without an amount' do
      operation.amount = nil
      expect(operation).to_not be_valid
    end
  end
end
