class CreateBillProducts < ActiveRecord::Migration
  def change
    create_table :bill_products do |t|
      t.integer :product_id
      t.integer :bill_id

      t.timestamps null: false
    end
  end
end
