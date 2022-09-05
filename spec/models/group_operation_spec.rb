require 'rails_helper'

RSpec.describe GroupOperation, type: :model do
  let(:user) { User.create(name: 'User') }
  let(:group) { Group.create(name: 'Group', icon: 'icon') }
  let(:operation) { Operation.create(name: 'Operation', amount: 100, user: user) }
  let(:group_operation) { GroupOperation.create(group_id: group, operation_id: operation) }
  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(group_operation).to be_valid
    end
  end
end
