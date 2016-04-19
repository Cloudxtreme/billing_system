class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.datetime :date, null: false
      t.references :cashier
      t.references :customer
      t.string :cashier_name, null: false, index: true
      t.string :customer_name, null: false, index: true
      t.decimal :subtotal
      t.decimal :total

      t.timestamps null: false
    end

    add_foreign_key :bills, :cashiers
    add_foreign_key :bills, :customers
  end
end
