puts "What do you want to say to Grandma?"

loop do
	print '>'
	response = gets.chomp
	if response == "BYE"
		break
	elsif response != response.upcase #regex =~ /[a-z]*/ , ish
		puts "HUH?! SPEAK UP, SONNY!"
	else
		puts "NO, NOT SINCE 1938!"
	end
end
