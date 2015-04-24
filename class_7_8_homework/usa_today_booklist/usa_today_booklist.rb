require 'httparty'

usa_books =HTTParty.get('http://api.usatoday.com/open/bestsellers/books/ThisWeek?count=20&class=Fiction&api_key=anwnn862kgvf2zsbey7bm9ay')
parsed = usa_books.parsed_response

#title = parsed['BookLists'][0]['BookListEntries'][0]['Title']
#puts title

most_recent_booklists = parsed['BookLists'][0]['BookListEntries']

#output title, author & brief description of the first 20 books from most recently published list
#genre = parsed['BookLists'][0]['BookListEntries']

most_recent_booklists.each_with_index do |booklist_hash,i|
		puts "#{i+1}. #{booklist_hash['Title']} by #{booklist_hash['Author']}"
		null_description = parsed['BookLists'][0]['BriefDescription']
			if null_description == true
				puts "#{booklist_hash['BriefDescription']}"
			else
				puts "This is a good book!"
			end
		puts "\n------------------------------------------------------\n"
		i=i+1
	end

