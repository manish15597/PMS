json.extract! schedule, :id, :project_id, :course_id, :start_time, :end_time, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
