json.extract! job, :id, :company, :start_date, :end_date, :current_job, :created_at, :updated_at
json.url job_url(job, format: :json)
