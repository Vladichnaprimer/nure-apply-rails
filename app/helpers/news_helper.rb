module NewsHelper

	def correct_description(news)
		news.description.html_safe
	end
end
