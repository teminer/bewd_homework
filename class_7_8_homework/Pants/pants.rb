require 'sinatra'
require 'httparty'

puts "Please enter your zip code:"
zip = gets.chomp

HTTParty.get('http://api.zippopotam.us/us/#{zip}')

puts gets.chomp

#puts "Today is a #{day_type} day. The temp will be #{templow} and a high of #{temphigh}."