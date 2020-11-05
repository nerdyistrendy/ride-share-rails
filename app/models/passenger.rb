class Passenger < ApplicationRecord
  has_many :trips

  def total_spent
    total = self.trips.sum(:cost)/100
    return total > 0 ? total : 0
  end
end
