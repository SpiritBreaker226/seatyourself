class Restaurant < ActiveRecord::Base
	validates :name, :address, :description, :capacity, :hours_open, :hours_closed, presence: true 
	has_many :reservations

	def available? (party_size, time)
		reservation_count = reservations.sum(:party_size)
		party_size + reservation_count <= capacity 
	end

end
