require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :person_id => 1,
        :total_purchases => 2,
        :is_active => false
      ),
      Customer.create!(
        :person_id => 1,
        :total_purchases => 2,
        :is_active => false
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
