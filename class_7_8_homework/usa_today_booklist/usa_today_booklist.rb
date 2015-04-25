require 'httparty'

usa_books =HTTParty.get('http://api.usatoday.com/open/bestsellers/books/ThisWeek?count=20&class=Fiction&api_key=anwnn862kgvf2zsbey7bm9ay')
parsed = usa_books.parsed_response

#title = parsed['BookLists'][0]['BookListEntries'][0]['Title']
#puts title

most_recent_booklists = parsed['BookLists'][0]['BookListEntries']


if most_recent_booklists.empty?
	puts "There are no Bestsellers this week. Try the library!\n"
else
	#output title, author & brief description of the first 20 books from most recently published list
	most_recent_booklists.each_with_index do |booklist_hash,i|
			puts "#{i+1}. #{booklist_hash['Title']} by #{booklist_hash['Author']}"
			description = booklist_hash['BriefDescription']
				if description.nil?
					puts "This is a good book!"
				else
					puts "#{description}"
				end
			puts "\n------------------------------------------------------\n"
	end
end
