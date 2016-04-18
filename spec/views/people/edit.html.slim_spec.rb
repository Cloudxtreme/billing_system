require 'rails_helper'

RSpec.describe "people/edit", type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :id_number => 1,
      :first_name => "MyString",
      :last_name => "MyString",
      :gender => "",
      :address => "MyText",
      :gender => false,
      :picture => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    assert_select "form[action=?][method=?]", person_path(@person), "post" do

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
