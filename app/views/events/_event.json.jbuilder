json.extract! event, :id, :name, :address, :duration_time, :max_people, :ticket_value, :persona_id, :created_at, :updated_at
json.url event_url(event, format: :json)
