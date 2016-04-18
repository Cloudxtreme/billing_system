class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :person_id
      t.datetime :hire_date
      t.string :job_title
      t.decimal :salary

      t.timestamps null: false
    end
  end
end
