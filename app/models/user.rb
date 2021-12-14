class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :phone, presence: true
    validates :hashed_password, presence: true
end
