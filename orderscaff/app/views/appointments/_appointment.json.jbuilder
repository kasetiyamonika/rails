json.extract! appointment, :id, :user_id, :service_id, :payment_id, :payment_mode, :price, :start_time, :end_time, :status, :remark, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
