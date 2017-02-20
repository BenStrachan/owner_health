json.extract! user_appointment_type, :id, :name, :description, :price, :item_number, :duration, :created_at, :updated_at
json.url user_appointment_type_url(user_appointment_type, format: :json)