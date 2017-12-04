class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :status
      t.decimal :total_price, :precision => 8, :scale => 2
      t.decimal :tax, :precision => 8, :scale => 2
      t.decimal :shipping, :precision => 8, :scale => 2
      t.decimal :subtotal, :precision => 8, :scale => 2
      t.integer :order_number
      t.integer :account_id

      t.timestamps
    end
  end
end
