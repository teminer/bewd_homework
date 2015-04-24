require 'httparty'

usa_books =HTTParty.get('http://api.usatoday.com/open/bestsellers/books/ThisWeek?api_key=anwnn862kgvf2zsbey7bm9ay')
parsed = usa_books.parsed_response


booklists = parsed['BookLists']

#output title, author & brief description of the first 20 books from most recently published list
booklists.each do |booklist_hash|

	puts "#{booklist_hash['Title']} by #{booklist_hash['author']}"
	
end

