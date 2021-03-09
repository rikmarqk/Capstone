class Doctor < ApplicationRecord
    has_many :appointments
    has_many :user_pets, through: :appointments
end
