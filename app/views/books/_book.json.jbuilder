json.extract! book, :id, :title, :author, :isbn, :published_at, :created_at, :updated_at
json.url book_url(book, format: :json)
