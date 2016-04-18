require 'rails_helper'

RSpec.describe "employees/show", type: :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :person_id => 1,
      :job_title => "Job Title",
      :salary => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Job Title/)
    expect(rendered).to match(/9.99/)
  end
end
