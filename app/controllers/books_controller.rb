class BooksController < ApplicationController
  before_action :find_book, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
  	@books = Book.all
  end

  def new
  	@book = current_user.books.build
  end

  def create
  	@book = current_user.books.build(books_params)

  	if @book.save
  		redirect_to @book, notice: "Книга успешно добавлена"
  	else
  		render 'new'
  	end
  end

  def show
    @reviews = Review.where(book_id: @book.id).order("created_at DESC")
  end

  def edit
  end

  def update
  	if @book.update(books_params)
			redirect_to @book, notice: "Изменения успешно сохранены"
		else
			render 'edit'
		end
  end

  def destroy
  	@book.destroy
	redirect_to root_path, notice: "Выбранная нига удалена"
  end

  private
  def find_book
  	@book = Book.find(params[:id])
  end

  def books_params
  	params.require(:book).permit(:title, :description, :image, :author)
  end
end
