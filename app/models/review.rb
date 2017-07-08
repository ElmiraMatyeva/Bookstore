class Review < ApplicationRecord
	belongs_to :user
	belongs_to :book
	belongs_to :commentable, polymorphic: true
end
