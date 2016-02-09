class Competition < ApplicationRecord
  belongs_to :user
  belongs_to :war

  validates :user, :war, presence: true
end
