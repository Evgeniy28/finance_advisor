require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #index" do
    before { get :index }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it 'assigns new customers for page#index' do
      expect(assigns(:customer)).to be_a_new(Customer)
    end
  end

end
