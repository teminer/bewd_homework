class WelcomeController < ApplicationController

	def ssmm

		@message = 'Welcome to the Super Secret Military Mainframe!'
		
	end

	def login

		@message = 'Please enter your security code:'

	end

	def mainframe

		@message = "Welcome to the Mainframe."
		@pic = HTTParty.get('http://freepclessons.com/wp-content/uploads/2014/06/IBM_Blue_Gene_P_supercomputer.jpg')

	end

	def failure

		@message = "Incorrect. Please return to the login page and try again."

	end


end