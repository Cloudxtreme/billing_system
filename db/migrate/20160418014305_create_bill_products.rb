class CreateBillProducts < ActiveRecord::Migration
  def change
    create_table :bill_products do |t|
      t.references :product, index: true, null: false
      t.references :bill, index: true, null: false

      t.timestamps null: false
    end

    add_foreign_key :bill_products, :product
    add_foreign_key :bill_products, :bill
  end
end
