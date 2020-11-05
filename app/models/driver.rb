class Driver < ApplicationRecord
  has_many :trips

  validates :name, presence: true
  validates :vin, presence: true

  def average_rating
    return self.trips.average(:rating)
  end

  def total_earnings
    total = (self.trips.sum(:cost) - 1.65) * 0.8
    return total > 0? total: 0
  end
end
