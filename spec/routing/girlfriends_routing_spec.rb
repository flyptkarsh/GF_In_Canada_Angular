require "rails_helper"

RSpec.describe GirlfriendsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/girlfriends").to route_to("girlfriends#index")
    end

    it "routes to #new" do
      expect(:get => "/girlfriends/new").to route_to("girlfriends#new")
    end

    it "routes to #show" do
      expect(:get => "/girlfriends/1").to route_to("girlfriends#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/girlfriends/1/edit").to route_to("girlfriends#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/girlfriends").to route_to("girlfriends#create")
    end

    it "routes to #update" do
      expect(:put => "/girlfriends/1").to route_to("girlfriends#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/girlfriends/1").to route_to("girlfriends#destroy", :id => "1")
    end

  end
end
