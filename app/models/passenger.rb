class Passenger < ApplicationRecord
  has_many :trips

  validates :name, presence: true

  validates :phone_num, presence: true, uniqueness: true

  def trips_cost

    my_trips = self.trips
    total = 0

    my_trips.each do |trip|
      total += trip.cost
    end

    return total / 100
  end


end
