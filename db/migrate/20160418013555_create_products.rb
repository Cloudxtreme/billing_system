class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :department_id
      t.integer :supplier_id
      t.string :product_code
      t.decimal :price
      t.decimal :discount

      t.timestamps null: false
    end
  end
end
