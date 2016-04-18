require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :name => "Name",
      :description => "MyText",
      :department_id => 1,
      :supplier_id => 2,
      :product_code => "Product Code",
      :price => "9.99",
      :discount => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Product Code/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
