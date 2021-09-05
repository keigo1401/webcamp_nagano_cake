class CreateOrderDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :order_details do |t|
      t.integer :item_id
      t.integer :order_id
      t.integer :price_tax_included
      t.integer :quantity
      t.integer :making_status
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
