json.extract! product, :id, :category_id, :name, :description, :mrp, :discount, :discount_type, :created_at, :updated_at
json.url product_url(product, format: :json)
