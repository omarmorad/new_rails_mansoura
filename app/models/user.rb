class User < ApplicationRecord
  validates :name, :dob, :email, :phone_number, presence: true
  validates :email, 
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
    uniqueness: { case_sensitive: false }
end