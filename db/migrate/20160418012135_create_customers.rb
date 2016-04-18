class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :person_id
      t.integer :total_purchases
      t.datetime :last_purchase_date
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
