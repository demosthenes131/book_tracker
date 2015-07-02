require "./book"
require "./add_book"

def run
    loop do
        puts "Select an option from the below choices"
        puts "a: Add a Book"
        puts "p: View the Books"
        puts "s: Search the Books"
        puts "e: Exit"
        input = gets.chomp.downcase
        case input
            when 'a'
                add_book
            when 'p'
                print_list
            when 's'
                search_books
            when 'e'
                break
        end
    end    
end

@book_list = []

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
  @book_list.push(book)
end

def print_list
  puts "Book List"
  @book_list.each { |book| print book }
end  

run
puts @book_list.inspect