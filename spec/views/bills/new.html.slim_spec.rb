require 'rails_helper'

RSpec.describe "bills/new", type: :view do
  before(:each) do
    assign(:bill, Bill.new(
      :cashier_id => 1,
      :customer_id => 1,
      :subtotal => "9.99",
      :total => "9.99"
    ))
  end

  it "renders new bill form" do
    render

    assert_select "form[action=?][method=?]", bills_path, "post" do

      assert_select "input#bill_cashier_id[name=?]", "bill[cashier_id]"

      assert_select "input#bill_customer_id[name=?]", "bill[customer_id]"

      assert_select "input#bill_subtotal[name=?]", "bill[subtotal]"

      assert_select "input#bill_total[name=?]", "bill[total]"
    end
  end
end
