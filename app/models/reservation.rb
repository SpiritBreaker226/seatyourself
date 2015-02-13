class Reservation < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user

  validates :party_size, :time, presence: true 
  validates :party_size, numericality: {greater_than: 0}

  validate :availability, :within_opening_hours 

  private
  	def availability 
  		if !restaurant.available?(party_size, time)
  			errors.add(:base, "Restaurant is full. Please try a different time.")
  		end
  	end

  	def within_opening_hours
  		if !restaurant.open?(time)
  			errors.add(:base, "Restaurant is closed. Please make a reservation within opening hours.")
  		end
  	end

end
