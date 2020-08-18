class User < ApplicationRecord

    has_many :appointments
    has_many :treatments, through: :appointments

end
