class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.integer :qauntity
      t.integer :product_id
      t.integer :order_id

      t.timestamps
    end
  end
end
