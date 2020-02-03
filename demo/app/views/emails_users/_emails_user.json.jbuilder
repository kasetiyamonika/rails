json.extract! emails_user, :id, :user_id, :email_id, :created_at, :updated_at
json.url emails_user_url(emails_user, format: :json)
