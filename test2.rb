require "./book"

puts book_list.inspect
book_list = []

loop do
  book = Book.new
  print "Book title: "
  book.book_title = gets.chomp
  print "Author: "
  book.author = gets.chomp
  print "Genre: "
  book.genre = gets.chomp
  print "Have you read it, listened to it, or is it a wish list item? "
  book.status = gets.chomp
  print "Write a short, one sentence, review! "
  book.review = gets.chomp
  book_list.push(book)
  
  puts "add another?"
  break unless gets.chomp =~ /y/
end


puts book_list.inspect