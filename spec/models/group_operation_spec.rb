require 'rails_helper'

RSpec.describe GroupOperation, type: :model do
  let(:user) { User.create(id: 1, name: 'User') }
  let(:group) { Group.create(id: 1, name: 'Group', icon: 'icon') }
  let(:operation) { Operation.create(id: 1, name: 'Operation', amount: 100, user:) }
  let(:group_operation) { GroupOperation.create(group_id: group, operation_id: operation) }
  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(group_operation).to be_valid
    end
  end
end
