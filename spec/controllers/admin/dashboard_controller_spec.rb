require 'spec_helper'

describe Admin::DashboardController do

  before do
    user = User.create(email: "a@b.c", is_admin: true, password: 'password', password_confirmation: 'password')
    sign_in user
  end

  describe "GET 'index'" do
    it "returns http success" do
      get :index
      response.should be_success
    end
  end

end
