class Book < ApplicationRecord
  include Count

  belongs_to :user

  validates :title, presence: true
  validates :author, presence: true

  VALID_STATUSES = ["À ler", "Lendo", "Lido"]
  validates :status, inclusion: {in: VALID_STATUSES}
end
