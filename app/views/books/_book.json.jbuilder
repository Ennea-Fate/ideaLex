json.extract! book, :id, :text, :author_id, :created_at, :updated_at
json.url book_url(book, format: :json)
