json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :avatar, :github_url
  json.url project_url(project, format: :json)
end
