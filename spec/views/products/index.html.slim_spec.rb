require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :name => "Name",
        :description => "MyText",
        :department_id => 1,
        :supplier_id => 2,
        :product_code => "Product Code",
        :price => "9.99",
        :discount => "9.99"
      ),
      Product.create!(
        :name => "Name",
        :description => "MyText",
        :department_id => 1,
        :supplier_id => 2,
        :product_code => "Product Code",
        :price => "9.99",
        :discount => "9.99"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Product Code".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
