require 'rails_helper'

RSpec.describe 'Splashes', type: :request do
  describe 'GET /index' do
    before :each do
      get root_path
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end
end
