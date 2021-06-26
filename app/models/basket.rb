class Basket < ApplicationRecord
  belongs_to :order
  belongs_to :product

  # def product_ids=(arr)
  #   arr.each do |id|
  #     self.orders.build(product_id: id)
  #   end
  # end

end
