json.extract! course, :id, :course_name, :faculty_id, :created_at, :updated_at
json.url course_url(course, format: :json)
