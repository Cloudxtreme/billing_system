require 'rails_helper'

RSpec.describe "suppliers/index", type: :view do
  before(:each) do
    assign(:suppliers, [
      Supplier.create!(
        :name => "Name",
        :address => "MyText",
        :contact_name => "Contact Name"
      ),
      Supplier.create!(
        :name => "Name",
        :address => "MyText",
        :contact_name => "Contact Name"
      )
    ])
  end

  it "renders a list of suppliers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
  end
end
