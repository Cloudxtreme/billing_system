require 'rails_helper'

RSpec.describe "suppliers/new", type: :view do
  before(:each) do
    assign(:supplier, Supplier.new(
      :name => "MyString",
      :address => "MyText",
      :contact_name => "MyString"
    ))
  end

  it "renders new supplier form" do
    render

    assert_select "form[action=?][method=?]", suppliers_path, "post" do

      assert_select "input#supplier_name[name=?]", "supplier[name]"

      assert_select "textarea#supplier_address[name=?]", "supplier[address]"

      assert_select "input#supplier_contact_name[name=?]", "supplier[contact_name]"
    end
  end
end
