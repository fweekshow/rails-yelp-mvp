class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :content, presence: true

  # make sure rating is an integer(whole number) only between 0 and 5
end
