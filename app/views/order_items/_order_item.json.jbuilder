json.extract! order_item, :id, :qauntity, :product_id, :order_id, :created_at, :updated_at
json.url order_item_url(order_item, format: :json)
