class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :basket
      t.belongs_to :user

      t.timestamps
    end
  end
end
