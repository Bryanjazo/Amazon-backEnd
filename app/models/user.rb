class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_secure_password
  validates :email, uniqueness: true
 validates :email, presence: true



 has_many :products
 has_many :ReviewsController
end
