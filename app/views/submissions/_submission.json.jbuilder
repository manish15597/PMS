json.extract! submission, :id, :project_id, :report, :feedback, :created_at, :updated_at
json.url submission_url(submission, format: :json)
