require 'rails_helper'

RSpec.describe "Girlfriends", :type => :request do
  describe "GET /girlfriends" do
    it "works! (now write some real specs)" do
      get girlfriends_path
      expect(response.status).to be(200)
    end
  end
end
