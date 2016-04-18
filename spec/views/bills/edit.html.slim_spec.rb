require 'rails_helper'

RSpec.describe "bills/edit", type: :view do
  before(:each) do
    @bill = assign(:bill, Bill.create!(
      :cashier_id => 1,
      :customer_id => 1,
      :subtotal => "9.99",
      :total => "9.99"
    ))
  end

  it "renders the edit bill form" do
    render

    assert_select "form[action=?][method=?]", bill_path(@bill), "post" do

      assert_select "input#bill_cashier_id[name=?]", "bill[cashier_id]"

      assert_select "input#bill_customer_id[name=?]", "bill[customer_id]"

      assert_select "input#bill_subtotal[name=?]", "bill[subtotal]"

      assert_select "input#bill_total[name=?]", "bill[total]"
    end
  end
end
