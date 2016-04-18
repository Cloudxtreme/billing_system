require 'rails_helper'

RSpec.describe "people/new", type: :view do
  before(:each) do
    assign(:person, Person.new(
      :id_number => 1,
      :first_name => "MyString",
      :last_name => "MyString",
      :gender => "",
      :address => "MyText",
      :gender => false,
      :picture => "MyString"
    ))
  end

  it "renders new person form" do
    render

    assert_select "form[action=?][method=?]", people_path, "post" do

      assert_select "input#person_id_number[name=?]", "person[id_number]"

      assert_select "input#person_first_name[name=?]", "person[first_name]"

      assert_select "input#person_last_name[name=?]", "person[last_name]"

      assert_select "input#person_gender[name=?]", "person[gender]"

      assert_select "textarea#person_address[name=?]", "person[address]"

      assert_select "input#person_gender[name=?]", "person[gender]"

      assert_select "input#person_picture[name=?]", "person[picture]"
    end
  end
end
