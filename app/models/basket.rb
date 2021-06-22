class Basket < ApplicationRecord
  belongs_to :user
  has_many :products

  def product_ids=(arr)
    arr.each do |id|
      self.orders.build(product_id: id)
    end
  end

end
