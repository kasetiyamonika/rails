json.extract! order_product, :id, :product_id, :order_id, :price, :discount, :discount_type, :total, :created_at, :updated_at
json.url order_product_url(order_product, format: :json)
