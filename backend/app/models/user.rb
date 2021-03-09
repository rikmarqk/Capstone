require 'bcrypt'

class User < ApplicationRecord
    has_secure_password
    validates :email, uniqueness: true
    
    has_many :user_pets
    has_many :pets, through: :user_pets
    has_many :playdates
    has_many :pets, through: :playdates

end
