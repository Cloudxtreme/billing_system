require 'rails_helper'

RSpec.describe "BillProducts", type: :request do
  describe "GET /bill_products" do
    it "works! (now write some real specs)" do
      get bill_products_path
      expect(response).to have_http_status(200)
    end
  end
end
