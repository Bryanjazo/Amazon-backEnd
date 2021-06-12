class Product < ApplicationRecord
  validates :description, presence: true
	validates :name, presence: true
  
  has_many :reviews
end
