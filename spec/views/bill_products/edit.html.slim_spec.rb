require 'rails_helper'

RSpec.describe "bill_products/edit", type: :view do
  before(:each) do
    @bill_product = assign(:bill_product, BillProduct.create!(
      :product_id => 1,
      :bill_id => 1
    ))
  end

  it "renders the edit bill_product form" do
    render

    assert_select "form[action=?][method=?]", bill_product_path(@bill_product), "post" do

      assert_select "input#bill_product_product_id[name=?]", "bill_product[product_id]"

      assert_select "input#bill_product_bill_id[name=?]", "bill_product[bill_id]"
    end
  end
end
