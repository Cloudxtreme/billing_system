require 'rails_helper'

RSpec.describe "customers/edit", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :person_id => 1,
      :total_purchases => 1,
      :is_active => false
    ))
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do

      assert_select "input#customer_person_id[name=?]", "customer[person_id]"

      assert_select "input#customer_total_purchases[name=?]", "customer[total_purchases]"

      assert_select "input#customer_is_active[name=?]", "customer[is_active]"
    end
  end
end
