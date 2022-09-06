require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { User.create(name: 'User') }
  let(:group) { Group.create(name: 'Group', icon: 'icon', user:) }
  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(group).to be_valid
    end
    it 'is not valid without a name' do
      group.name = nil
      expect(group).to_not be_valid
    end
    it 'is not valid without an icon' do
      group.icon = nil
      expect(group).to_not be_valid
    end
  end
end
