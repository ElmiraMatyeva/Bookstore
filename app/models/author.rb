class Author < ApplicationRecord
	has_many :reviews, as: :commentable, dependent: :destroy
	has_many :books, dependent: :destroy
end
