module ApplicationHelper


	def prettytime(time)
		return "" if time.nil?
		time.strftime("%I:%M %p")
	end

	def prettydate(date)
		return "" if time.nil?
		date.strftime("%b %d, %Y")
	end

end
