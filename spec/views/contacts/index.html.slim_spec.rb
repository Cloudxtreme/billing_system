require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :contactable_id => 1,
        :contactable_type => "Contactable Type",
        :contact_type => 2,
        :detail => "Detail"
      ),
      Contact.create!(
        :contactable_id => 1,
        :contactable_type => "Contactable Type",
        :contact_type => 2,
        :detail => "Detail"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Contactable Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Detail".to_s, :count => 2
  end
end
