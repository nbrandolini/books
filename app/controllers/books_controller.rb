class BooksController < ApplicationController

  BOOKS_LIST = [
    {id: 1, title: "1984", author: "George Orwell"},
    {id: 2, title: "Pride & Prejudice", author: "Jane Austin"},
    {id: 3, title: "Harry Potter", author: "JK Rowling"},
    {id: 4, title: "Harry Poodr", author: "Sandy Metz"}
  ]

  def index
    @books = BOOKS_LIST
  end

  def show
    id = params[:id]
    @book = BOOKS_LIST.find do |book|
      book[:id] == id.to_i
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end


end
