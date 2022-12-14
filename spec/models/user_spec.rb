require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(name: 'User', email: 'ex@email.com', password: '123456') }
  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(user).to be_valid
    end
    it 'is not valid without a name' do
      user.name = nil
      expect(user).to_not be_valid
    end
  end
end
