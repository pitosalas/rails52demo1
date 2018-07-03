json.extract! content, :id, :original, :translated, :from_lang, :to_lang, :created_at, :updated_at
json.url content_url(content, format: :json)
