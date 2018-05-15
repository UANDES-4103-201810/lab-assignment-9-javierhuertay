json.extract! movie, :id, :title, :duration, :description, :director_id, :relase_date, :address_id, :created_at, :updated_at
json.url movie_url(movie, format: :json)
