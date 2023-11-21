json.extract! requisicao, :id, :titulo, :created_at, :updated_at
json.url requisicao_url(requisicao, format: :json)
