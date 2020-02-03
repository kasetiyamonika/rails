json.extract! order, :id, :user_id, :payment_id, :payment_mode, :date_time, :total, :status, :created_at, :updated_at
json.url order_url(order, format: :json)
