class WelcomeController < ApplicationController

	def home
	end
	
	def irl
		
		@message = "GGWP!!11"

		@summoner_name = params['summoner_name']
		@url = HTTParty.get('https://na.api.pvp.net/api/lol/na/v2.2/summoner/by-name/riotphillybrew?api_key=c3c77bfa-7f75-4160-b79b-5d2bc070b6fe').parsed_response
		
		@summoner_id = @url['riotphillybrew']['summonerId']
		
		@match_history = HTTParty.get('https://na.api.pvp.net/api/lol/na/v2.2/matchhistory/39031240?api_key=c3c77bfa-7f75-4160-b79b-5d2bc070b6fe').parsed_response		
		#champion_id = match_history['matches'][0]['participants']['championID'].to_i
		champ_info = HTTParty.get('https://global.api.pvp.net/api/lol/static-data/na/v1.2/champion/90?champData=image,info&api_key=c3c77bfa-7f75-4160-b79b-5d2bc070b6fe').parsed_response
		@champion = champ_info['name'] #not passing into erb?

		#pic = HTTParty.get('google custom search api for images of @champion')
		
	end
end

