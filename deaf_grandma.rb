puts "What do you want to say to Grandma?"

loop do
	print '>'
	response = gets.chomp
	if response == "BYE"
		break
	elsif response != response.upcase #regex =~ /[a-z]*/ , ish
		puts "HUH?! SPEAK UP, SONNY!"
	else
		year = rand(1930..1951)
		puts "NO, NOT SINCE #{year}!"
	end
end
