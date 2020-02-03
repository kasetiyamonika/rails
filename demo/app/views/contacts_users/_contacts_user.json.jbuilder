json.extract! contacts_user, :id, :user_id, :contact_id, :created_at, :updated_at
json.url contacts_user_url(contacts_user, format: :json)
