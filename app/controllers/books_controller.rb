class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    id = params[:id]
    @book = Book.find(id)
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new
    book.title = params[:book][:title]
    book.author = params[:book][:author]
    book.description = params[:book][:description]
    if book.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @book = Book.find_by(id: params[:id])
  end

  def update
    @book = Book.find_by(id: params[:id])
    if !@book.nil?
      @book.title = params[:book][:title]
      @book.author = params[:book][:author]
      @book.description = params[:book][:description]
      if @book.save
      #  if @book.update(title: params[:book][:title],
      #   author: params[:book][:author],
      #   description: params[:book][:description])

        redirect_to book_path(@book.id)
      else
        render :edit
      end
    else
      redirect_to books_path
    end


  end

  def destroy
    id = params[:id]
    @book = Book.find(id)
    if @book
      @book.destroy
    end
    redirect_to books_path
  end







end
