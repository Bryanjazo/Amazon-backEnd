class Cart < ApplicationRecord
  belongs_to :user
  belongs :product
end
