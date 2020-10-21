class User < ApplicationRecord
    has_many :reservations, dependent: :destroy
    has_many :favorites, dependent: :destroy
    has_many :restaurants, through: :reservations
    has_many :restaurants, through: :favorites

    has_secure_password
    has_secure_password :recovery_password, validations: false
    #look into this later (recovery password, false)

    validates :name, :username, presence:true
    validates :username, uniqueness: true
end
