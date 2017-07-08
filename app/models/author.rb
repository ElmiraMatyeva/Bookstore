class Author < ApplicationRecord
	has_many :reviews, as: :commentable
	has_many :books, dependent: :destroy

end
