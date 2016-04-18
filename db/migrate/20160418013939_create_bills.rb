class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.datetime :date
      t.integer :cashier_id
      t.integer :customer_id
      t.decimal :subtotal
      t.decimal :total

      t.timestamps null: false
    end
  end
end
