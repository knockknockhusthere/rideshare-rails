class Driver < ApplicationRecord
  has_many :trips

  def total_earnings

    total = 0

    my_rides = self.trips
    my_rides.each do |ride|
      raw_cost = ride.cost - 1.65
      sub_total = raw_cost * 0.8

      total += sub_total
    end
    return total/100
  end
end
