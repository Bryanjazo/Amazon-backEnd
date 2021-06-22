class CreateBaskets < ActiveRecord::Migration[6.1]
  def change
    create_table :baskets do |t|
      t.belongs_to :user
      t.belongs_to :product
      t.timestamps
    end
  end
end
