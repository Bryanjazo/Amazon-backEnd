class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :star

      t.string :name
      t.text :description
      t.integer :price
      t.string :product_image
      t.timestamps
    end
  end
end
