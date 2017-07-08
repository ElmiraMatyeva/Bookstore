class Book < ApplicationRecord
	belongs_to :user
	belongs_to :author
	belongs_to :category
	has_many :reviews, as: :commentable
	
	has_attached_file :image, styles: { medium: '300*300#', thumb: '100x100>' }, default_url: '/images/:style/missing.png' 
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
