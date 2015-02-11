module ApplicationHelper


	def prettytime(time)
		time.strftime("%I:%M %p")
	end

	def prettydate(date)
		date.strftime("%b %d, %Y")
	end

end
