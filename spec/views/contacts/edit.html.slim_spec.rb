require 'rails_helper'

RSpec.describe "contacts/edit", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :contactable_id => 1,
      :contactable_type => "MyString",
      :contact_type => 1,
      :detail => "MyString"
    ))
  end

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do

      assert_select "input#contact_contactable_id[name=?]", "contact[contactable_id]"

      assert_select "input#contact_contactable_type[name=?]", "contact[contactable_type]"

      assert_select "input#contact_contact_type[name=?]", "contact[contact_type]"

      assert_select "input#contact_detail[name=?]", "contact[detail]"
    end
  end
end
