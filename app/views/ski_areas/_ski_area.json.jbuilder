json.extract! ski_area, :id, :name, :address, :forecast, :snow_last_night, :created_at, :updated_at
json.url ski_area_url(ski_area, format: :json)
