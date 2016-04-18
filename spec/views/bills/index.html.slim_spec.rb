require 'rails_helper'

RSpec.describe "bills/index", type: :view do
  before(:each) do
    assign(:bills, [
      Bill.create!(
        :cashier_id => 1,
        :customer_id => 2,
        :subtotal => "9.99",
        :total => "9.99"
      ),
      Bill.create!(
        :cashier_id => 1,
        :customer_id => 2,
        :subtotal => "9.99",
        :total => "9.99"
      )
    ])
  end

  it "renders a list of bills" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
