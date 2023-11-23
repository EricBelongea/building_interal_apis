class Api::V2::BooksController < ApplicationController
  def index
    # render json: Book.all
    books = Book.all
    render json: BookSerializer.format_books(books)
  end
end