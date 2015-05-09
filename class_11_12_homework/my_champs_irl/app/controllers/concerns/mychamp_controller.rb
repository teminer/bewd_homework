class MyChampController < ApplicationController

	def home
	end
	
	def irl
		@message = "GGWP!!11"

		@summoner_name = params['summoner_name']
	end
end
