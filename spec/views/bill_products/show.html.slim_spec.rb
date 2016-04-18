require 'rails_helper'

RSpec.describe "bill_products/show", type: :view do
  before(:each) do
    @bill_product = assign(:bill_product, BillProduct.create!(
      :product_id => 1,
      :bill_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
