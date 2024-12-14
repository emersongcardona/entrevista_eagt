json.extract! task, :id, :title, :string, :description, :text, :due_date, :datetime, :complete, :boolean, :timestamps, :created_at, :updated_at
json.url task_url(task, format: :json)
