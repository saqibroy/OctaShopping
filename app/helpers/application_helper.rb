module ApplicationHelper
	def full_title(title='')
		base="Octa Shopping"
		if title.empty?
			base
		else
			"#{title} | #{base}"
		end
	end
end
