class AddIndexToReviews < ActiveRecord::Migration[5.1]
  def change
  	add_index :reviews, [:commentable_id, :commentable_type]
  end
end
