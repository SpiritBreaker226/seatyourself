class User < ActiveRecord::Base
	validates :email, uniqueness: true
	validates :email, :first_name, :last_name, presence: true
	validates :password, length: { in: 6..74 }

	has_secure_password
	has_many :reservations
end
