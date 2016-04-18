require 'rails_helper'

RSpec.describe "suppliers/show", type: :view do
  before(:each) do
    @supplier = assign(:supplier, Supplier.create!(
      :name => "Name",
      :address => "MyText",
      :contact_name => "Contact Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Contact Name/)
  end
end
