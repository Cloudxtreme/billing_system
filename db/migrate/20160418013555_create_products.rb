class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.references :department, index: true
      t.references :supplier, index: true
      t.string :product_code, null: false
      t.decimal :price, null: false
      t.decimal :discount

      t.timestamps null: false
    end

    add_foreign_key :products, :departments
    add_foreign_key :products, :suppliers, on_delete: :cascade
  end
end
