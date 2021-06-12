class Review < ApplicationRecord
  belongs_to :product
  validates :product_id, :presence => true
  validates :user_id, :presence => true
  belongs_to :user


end
