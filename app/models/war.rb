class War < ApplicationRecord
  has_one :review
  has_many :competitions
  has_many :users, through: :competitions

  validates :review, presence: true
end
