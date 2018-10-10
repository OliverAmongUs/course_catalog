json.extract! instructor, :id, :instructor_last, :instructor_first, :instructor_id, :instructor_email, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)
