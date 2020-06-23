json.extract! task, :id, :user_id, :desire_id, :target_date, :title, :detail, :status, :created_at, :updated_at
json.url task_url(task, format: :json)
