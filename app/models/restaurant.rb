class Restaurant < ActiveRecord::Base
	validates :name, :address, :description, :capacity, :hours_open, :hours_closed, presence: true 
	has_many :reservations

	def available? (party_size, time)
		reservation_count = reservations.where(time: time).sum(:party_size)
		party_size + reservation_count <= capacity 
	end

	def open?(datetime)
		datetime.time.hour >= hours_open.hour && datetime.time.hour < hours_closed.hour + 24
	end

end
