json.extract! movie, :id, :id, :title, :synopsis, :director, :original_soundtrack, :release_date, :created_at, :updated_at
json.url movie_url(movie, format: :json)
