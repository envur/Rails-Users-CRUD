class User < ApplicationRecord
  has_many :books 

  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :hashed_password, presence: true

  VALID_ROLES = ["Usuário", "Admin"]
  validates :role, inclusion: {in: VALID_ROLES}
end
