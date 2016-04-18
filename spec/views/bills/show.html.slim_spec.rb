require 'rails_helper'

RSpec.describe "bills/show", type: :view do
  before(:each) do
    @bill = assign(:bill, Bill.create!(
      :cashier_id => 1,
      :customer_id => 2,
      :subtotal => "9.99",
      :total => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
