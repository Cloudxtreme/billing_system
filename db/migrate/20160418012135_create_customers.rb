class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.references :person, null: false, index: true
      t.integer :total_purchases
      t.datetime :last_purchase_date
      t.boolean :is_active, default: true

      t.timestamps null: false
    end

    add_foreign_key :customers, :people, on_delete: :cascade
  end
end
