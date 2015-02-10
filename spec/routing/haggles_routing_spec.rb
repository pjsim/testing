require "rails_helper"

RSpec.describe HagglesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/haggles").to route_to("haggles#index")
    end

    it "routes to #new" do
      expect(:get => "/haggles/new").to route_to("haggles#new")
    end

    it "routes to #show" do
      expect(:get => "/haggles/1").to route_to("haggles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/haggles/1/edit").to route_to("haggles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/haggles").to route_to("haggles#create")
    end

    it "routes to #update" do
      expect(:put => "/haggles/1").to route_to("haggles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/haggles/1").to route_to("haggles#destroy", :id => "1")
    end

  end
end
