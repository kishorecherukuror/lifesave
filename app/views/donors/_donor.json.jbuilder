json.extract! donor, :id, :name, :created_at, :updated_at
json.url donor_url(donor, format: :json)