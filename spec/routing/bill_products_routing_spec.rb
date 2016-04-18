require "rails_helper"

RSpec.describe BillProductsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bill_products").to route_to("bill_products#index")
    end

    it "routes to #new" do
      expect(:get => "/bill_products/new").to route_to("bill_products#new")
    end

    it "routes to #show" do
      expect(:get => "/bill_products/1").to route_to("bill_products#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bill_products/1/edit").to route_to("bill_products#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bill_products").to route_to("bill_products#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bill_products/1").to route_to("bill_products#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bill_products/1").to route_to("bill_products#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bill_products/1").to route_to("bill_products#destroy", :id => "1")
    end

  end
end
