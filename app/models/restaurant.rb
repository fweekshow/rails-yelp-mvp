class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, :category, presence: true
  validates :category, presence: true, inclusion: { in: %w(chinese italian japanese french belgian) }

  def average_rating
    return "No reviews yet" if reviews.empty?

    avg = reviews.average(:rating)
    avg ? avg.round(1) : "No reviews yet"
  end
  # validate that category comes specifically from these 5 categories
  #destroy
end
