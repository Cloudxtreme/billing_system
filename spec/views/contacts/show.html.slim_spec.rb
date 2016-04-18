require 'rails_helper'

RSpec.describe "contacts/show", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :contactable_id => 1,
      :contactable_type => "Contactable Type",
      :contact_type => 2,
      :detail => "Detail"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Contactable Type/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Detail/)
  end
end
