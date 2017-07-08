class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_book
  before_action :authenticate_user!

  def new
  	@review = Review.new
  end

  def edit
  end

  def create

  	@review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.book_id = @book.id
     if @review.save
        redirect_to @book, notice: "Спасибо за отзыв!"
     else
        render 'new', notice: "Отзыв не сохранился"
     end
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end

    def set_book
      @book = Book.find(params[:book_id])
    end

    def review_params
  	 params.require(:review).permit(:description, :commentable_id, :commentable_type)
    end

end
