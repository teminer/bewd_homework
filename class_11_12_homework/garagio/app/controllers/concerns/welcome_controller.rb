class WelcomeController < ApplicationController

	def home
		@cars = Cars.all
	end

end
