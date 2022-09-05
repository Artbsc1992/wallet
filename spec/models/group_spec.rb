require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { User.create(name: 'User') }
  let(:group) { Group.create(name: 'Group', icon: 'icon') }
  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(group).to be_valid
    end
  end
end
