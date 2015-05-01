class RandomController < ApplicationController

	def zen

		@quote = HTTParty.get('https://api.github.com/zen?access_token=bd22e26e5f04873ca2511afb7b67fbe946a084fc')

	end

end