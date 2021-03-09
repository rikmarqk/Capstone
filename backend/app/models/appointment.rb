class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :user_pet
    
end
