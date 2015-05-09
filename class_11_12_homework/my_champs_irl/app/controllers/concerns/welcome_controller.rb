class WelcomeController < ApplicationController

	def home
	end
	
	def irl
		
		@message = "GGWP!!11"

		@summoner_name = params['summoner_name']
		url = 'https://na.api.pvp.net/api/lol/na/v2.2/summoner/by-name/#{@summoner_name}?api_key=c3c77bfa-7f75-4160-b79b-5d2bc070b6fe'

		
	end


end
