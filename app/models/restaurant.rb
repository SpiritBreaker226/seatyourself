class Restaurant < ActiveRecord::Base
	validates :name, :address, :description, :capacity, :hours_open, :hours_closed, presence: true 
	has_many :reservations
end
