class UserPet < ApplicationRecord
    belongs_to :user
    belongs_to :pet
    has_many :appointments
    has_many :doctors, through: :appointments
end
