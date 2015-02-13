class Reservation < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user

  validates :party_size, :time, presence: true 

  validate :availability 

  private
  	def availability 
  		if !restaurant.available?(party_size, time)
  			errors.add(:base, "Restaurant is full. Please try a different time.")
  		end
  	end

end
