require 'rails_helper'

RSpec.describe "employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        :person_id => 1,
        :job_title => "Job Title",
        :salary => "9.99"
      ),
      Employee.create!(
        :person_id => 1,
        :job_title => "Job Title",
        :salary => "9.99"
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Job Title".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
