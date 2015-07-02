require "./book"

class BookTracker

attr_writer :book_list

def initialize
  @book_list = []
end

def book_list
 @book_list = []
end


end


def add_book
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
end

def print_list
  puts "Book List"
  
end  


add_book
puts book_list.inspect