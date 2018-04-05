class Driver < ApplicationRecord
  has_many :trips

  def total_earnings
    total = 0

    my_rides = self.trips
    my_rides.each do |ride|
      raw_cost = ride.cost - 165
      sub_total = raw_cost * 0.8

      total += sub_total
    end
    return total / 100
  end

  def avg_rating
    my_rides = self.trips.where.not(rating: nil)

    total = 0.to_f
    my_rides.each do |ride|
      total += ride.rating
    end

    average_rating = total / (my_rides.length)
    return average_rating
  end
end
