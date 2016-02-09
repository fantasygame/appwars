class Idea < ApplicationRecord
  belongs_to :user

  validates :name, :description, :duration_in_seconds, :user, presence: true
end
