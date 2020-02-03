json.extract! patient, :id, :name, :mobile, :created_at, :updated_at
json.url patient_url(patient, format: :json)
