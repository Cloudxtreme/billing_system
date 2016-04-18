require 'rails_helper'

RSpec.describe "employees/edit", type: :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :person_id => 1,
      :job_title => "MyString",
      :salary => "9.99"
    ))
  end

  it "renders the edit employee form" do
    render

    assert_select "form[action=?][method=?]", employee_path(@employee), "post" do

      assert_select "input#employee_person_id[name=?]", "employee[person_id]"

      assert_select "input#employee_job_title[name=?]", "employee[job_title]"

      assert_select "input#employee_salary[name=?]", "employee[salary]"
    end
  end
end
