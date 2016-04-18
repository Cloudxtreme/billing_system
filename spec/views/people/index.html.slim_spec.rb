require 'rails_helper'

RSpec.describe "people/index", type: :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :id_number => 1,
        :first_name => "First Name",
        :last_name => "Last Name",
        :gender => "",
        :address => "MyText",
        :gender => false,
        :picture => "Picture"
      ),
      Person.create!(
        :id_number => 1,
        :first_name => "First Name",
        :last_name => "Last Name",
        :gender => "",
        :address => "MyText",
        :gender => false,
        :picture => "Picture"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
  end
end
