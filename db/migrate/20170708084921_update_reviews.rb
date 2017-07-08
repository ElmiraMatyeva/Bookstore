class UpdateReviews < ActiveRecord::Migration[5.1]
  def change
  	add_column :reviews, :commentable_id, :integer
  	add_column :reviews, :commentable_type, :string
  end
end
