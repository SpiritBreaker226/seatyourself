Restaurant.create!(
  	:name => "Banjara",
  	:address => "796 Bloor Street West, Toronto, ON M6G 1L7",
  	:description => "Popular dining option offering North & South Indian fare, with beer on tap plus takeout & delivery.",
  	:capacity => 50,
  	:hours_open => Time.strptime("17:00:00", "%H:%M:%S"),
  	:hours_closed => Time.strptime("17:00:00", "%H:%M:%S"),
)

Reservation.create!(
	:time => DateTime.strptime('2001-02-03T04:05:06+07:00', '%Y-%m-%dT%H:%M:%S%z'),
	:restaurant_id => 1,
	:user_id => 1,
	:party_size => 2,
)

User.create!(
  :first_name => "Martha",
  :last_name => "Stewart",
  :email => "martha@steware.com",
  :password => "password",
)




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
