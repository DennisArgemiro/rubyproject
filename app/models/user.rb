class User < ApplicationRecord
  # Devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # Associações
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
