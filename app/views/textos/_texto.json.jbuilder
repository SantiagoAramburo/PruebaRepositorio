json.extract! texto, :id, :titulo, :cuerpo, :autor, :created_at, :updated_at
json.url texto_url(texto, format: :json)
