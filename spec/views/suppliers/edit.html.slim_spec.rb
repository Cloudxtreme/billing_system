require 'rails_helper'

RSpec.describe "suppliers/edit", type: :view do
  before(:each) do
    @supplier = assign(:supplier, Supplier.create!(
      :name => "MyString",
      :address => "MyText",
      :contact_name => "MyString"
    ))
  end

  it "renders the edit supplier form" do
    render

    assert_select "form[action=?][method=?]", supplier_path(@supplier), "post" do

      assert_select "input#supplier_name[name=?]", "supplier[name]"

      assert_select "textarea#supplier_address[name=?]", "supplier[address]"

      assert_select "input#supplier_contact_name[name=?]", "supplier[contact_name]"
    end
  end
end
