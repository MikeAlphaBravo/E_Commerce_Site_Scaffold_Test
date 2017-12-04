json.extract! order, :id, :status, :total_price, :tax, :shipping, :subtotal, :order_number, :account_id, :created_at, :updated_at
json.url order_url(order, format: :json)
