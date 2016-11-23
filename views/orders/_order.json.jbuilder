json.extract! order, :id, :product_id, :item_count, :price, :user_id, :order_complete, :created_at, :updated_at
json.url order_url(order, format: :json)