class Review < ApplicationRecord
  belongs_to :restaurant
  RATING = (0..5).to_a
  validates :rating, inclusion: { in: RATING }
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
end
