class Review < ApplicationRecord
  belongs_to :war
  belongs_to :user

  validates :war, :user, presence: true
end
