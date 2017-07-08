class AuthorsController < ApplicationController
	before_action :authenticate_user!, except: :index
	
	def new
		@author = Author.new
	end

	def index
		@authors = Author.all
	end

	def create
		@author = Author.new(author_params)
		if @author.save
			redirect_to root_path, notice: "Автор успешно создан"
		else
			render 'new'
		end
	end

	def author_params
		params.require(:author).permit(:name)
	end
end
