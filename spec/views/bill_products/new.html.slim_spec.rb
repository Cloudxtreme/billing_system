require 'rails_helper'

RSpec.describe "bill_products/new", type: :view do
  before(:each) do
    assign(:bill_product, BillProduct.new(
      :product_id => 1,
      :bill_id => 1
    ))
  end

  it "renders new bill_product form" do
    render

    assert_select "form[action=?][method=?]", bill_products_path, "post" do

      assert_select "input#bill_product_product_id[name=?]", "bill_product[product_id]"

      assert_select "input#bill_product_bill_id[name=?]", "bill_product[bill_id]"
    end
  end
end
