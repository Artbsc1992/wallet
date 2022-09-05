require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { User.new(name: 'User') }
  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(User.new).to be_valid
    end
  end
end
