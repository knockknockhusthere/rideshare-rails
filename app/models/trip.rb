class Trip < ApplicationRecord
  belongs_to :passenger
  belongs_to :driver

  def rating
    my_rating = self.where(rating: nil)
    my_rating.rating == range(1...5)

  end

end
