json.extract! appointment, :id, :user_id, :payment_id, :payment_mode, :service_id, :price, :start_time, :end_time, :status, :remark, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
