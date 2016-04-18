require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :name => "MyString",
      :description => "MyText",
      :department_id => 1,
      :supplier_id => 1,
      :product_code => "MyString",
      :price => "9.99",
      :discount => "9.99"
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "textarea#product_description[name=?]", "product[description]"

      assert_select "input#product_department_id[name=?]", "product[department_id]"

      assert_select "input#product_supplier_id[name=?]", "product[supplier_id]"

      assert_select "input#product_product_code[name=?]", "product[product_code]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_discount[name=?]", "product[discount]"
    end
  end
end
