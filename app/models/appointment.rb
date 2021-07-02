class Appointment < ApplicationRecord
    belongs_to :user
    belongs_to :doctors
end
