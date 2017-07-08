class BooksController < ApplicationController
  before_action :find_book, only: [:show, :edit, :update, :destroy]
  
  def index
  	@book = Book.all
  end

  def new
  	@book = Book.new
  end

  def create
  	@book = Book.new(books_params)

  	if @book.save
  		redirect_to root_path, notice: "Книга успешно добавлена"
  	else
  		render 'new'
  	end
  end

  def show
  end

  def edit
  end

  def update
  	if @book.update(books_params)
			redirect_to root_path, notice: "Изменения успешно сохранены"
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
  	params.require(:book).permit(:title, :description)
  end
end
