User.create!(
  :first_name => "Martha",
  :last_name => "Stewart",
  :email => "martha@stewart.com",
  :password => "password",
)

User.create!(
  :first_name => "Michael",
  :last_name => "Jackson",
  :email => "michaeljackson@email.com",
  :password => "password",
)

User.create!(
  :first_name => "Your",
  :last_name => "Mom",
  :email => "mommy@email.com",
  :password => "password",
)

Restaurant.create!(
  	:name => "Banjara",
  	:address => "796 Bloor Street West, Toronto, ON M6G 1L7",
  	:description => "Popular dining option offering North & South Indian fare, with beer on tap plus takeout & delivery.",
  	:capacity => 50,
  	:hours_open => Time.strptime("17:00:00", "%H:%M:%S"),
  	:hours_closed => Time.strptime("23:00:00", "%H:%M:%S"),
)

Restaurant.create!(
  	:name => "Little Nicky's",
  	:address => "375 Queen St W, Toronto, ON M5V 2A5",
  	:description => "Cozy cafe with a vintage vibe that sells espresso drinks & beans, plus housemade sugary mini-donuts.",
  	:capacity => 20,
  	:hours_open => Time.strptime("16:00:00", "%H:%M:%S"),
  	:hours_closed => Time.strptime("22:00:00", "%H:%M:%S"),
)

Restaurant.create!(
  	:name => "The Keg",
  	:address => "165 York Street, Toronto, Ontario M5H 3R8",
  	:description => "Quality, comfort and value are three key ingredients that make The Keg Steakhouse & Bar experience like no other.",
  	:capacity => 100,
  	:hours_open => Time.strptime("12:00:00", "%H:%M:%S"),
  	:hours_closed => Time.strptime("23:00:00", "%H:%M:%S"),
)

Reservation.create!(
	:time => DateTime.strptime('2001-02-03T04:05:06+07:00', '%Y-%m-%dT%H:%M:%S%z'),
	:restaurant => Restaurant.first,
	:user => User.first,
	:party_size => 2,
)

Reservation.create!(
	:time => DateTime.strptime('2001-02-03T04:05:06+07:00', '%Y-%m-%dT%H:%M:%S%z'),
	:restaurant => Restaurant.second,
	:user => User.second,
	:party_size => 4,
)

Reservation.create!(
	:time => DateTime.strptime('2001-02-03T04:05:06+07:00', '%Y-%m-%dT%H:%M:%S%z'),
	:restaurant => Restaurant.third,
	:user => User.third,
	:party_size => 10,
)



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
