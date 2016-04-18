require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      :contactable_id => 1,
      :contactable_type => "MyString",
      :contact_type => 1,
      :detail => "MyString"
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input#contact_contactable_id[name=?]", "contact[contactable_id]"

      assert_select "input#contact_contactable_type[name=?]", "contact[contactable_type]"

      assert_select "input#contact_contact_type[name=?]", "contact[contact_type]"

      assert_select "input#contact_detail[name=?]", "contact[detail]"
    end
  end
end
