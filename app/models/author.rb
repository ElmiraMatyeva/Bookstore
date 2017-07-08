class Author < ApplicationRecord
	has_many :copyrights
    has_many :books, through: :copyrights
end
