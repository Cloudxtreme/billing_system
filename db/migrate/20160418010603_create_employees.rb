class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.references :person, index: true, null:false
      t.datetime :hire_date, null: false
      t.string :job_title, null: false
      t.decimal :salary, null: false

      t.timestamps null: false
    end

    add_foreign_key :employees, :people, on_delete: :cascade
  end
end
