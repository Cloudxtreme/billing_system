class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name, null: false
      t.text :address
      t.string :contact_name

      t.timestamps null: false
    end
  end
end
