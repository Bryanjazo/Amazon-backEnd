class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :body
      t.references :product, foreign_key: true
      t.integer :rating
      t.belongs_to :user
      t.timestamps
    end
  end
end
