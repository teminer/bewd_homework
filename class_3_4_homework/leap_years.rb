puts "Please enter a starting year:"
start_year = gets.chomp.to_i

puts "Please enter an ending year:"
end_year = gets.chomp.to_i

puts "Leap Years between #{start_year} & #{end_year}:\n"

while (start_year <= end_year)
	if start_year % 4 == 0
		if start_year % 400 == 0
			puts start_year
		elsif start_year % 100 == 0
			#nothing
		else 
			puts start_year
		end
	end
	
	start_year = start_year + 1

end

