json.extract! report, :id, :user_id, :reportable_id, :reportable_type, :report_type, :created_at, :updated_at
json.url report_url(report, format: :json)
