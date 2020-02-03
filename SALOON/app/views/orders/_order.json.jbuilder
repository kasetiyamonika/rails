json.extract! order, :id, :user_id, :payment_id, :date_time, :total, :status, :payment_mode, :created_at, :updated_at
json.url order_url(order, format: :json)
