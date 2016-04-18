require 'rails_helper'

RSpec.describe "bill_products/index", type: :view do
  before(:each) do
    assign(:bill_products, [
      BillProduct.create!(
        :product_id => 1,
        :bill_id => 2
      ),
      BillProduct.create!(
        :product_id => 1,
        :bill_id => 2
      )
    ])
  end

  it "renders a list of bill_products" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
