class CreateCopyrights < ActiveRecord::Migration[5.1]
  def change
    create_table :copyrights do |t|
      t.references :author, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
