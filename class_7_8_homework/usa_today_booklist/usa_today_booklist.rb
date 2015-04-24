require 'httparty'

usa_books =HTTParty.get('http://api.usatoday.com/open/bestsellers/books/ThisWeek?api_key=anwnn862kgvf2zsbey7bm9ay')
parsed = usa_books.parsed_response

#title = parsed['BookLists'][0]['BookListEntries'][0]['Title']
#puts title

most_recent_booklists = parsed['BookLists'][0]['BookListEntries']

#output title, author & brief description of the first 20 books from most recently published list
most_recent_booklists.each do |booklist_hash|

	puts "#{booklist_hash['Title']} by #{booklist_hash['Author']}"
	puts "#{booklist_hash['BriefDescription']}"
	puts "\n------------------------------------------------------\n"
	
end

