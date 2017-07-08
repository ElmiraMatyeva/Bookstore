class Book < ApplicationRecord
	belongs_to :user
	has_many :copyrights
	has_many :authors
	has_many :authors, through: :copyrights
	has_many :books_categories
	has_many :categories, through: :books_categories
	has_many :reviews
	
	has_attached_file :image, styles: { medium: "400*600#"} 
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	ratyrate_rateable "rating"
end
