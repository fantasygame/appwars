class War < ApplicationRecord
  has_one :review

  validates :review, presence: true
end
