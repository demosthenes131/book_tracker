require "./book"
require "yaml"

def open
  if File.exist?("books.yml")
    @book_list = YAML.load_file("books.yml")
  end
end

def save
  File.open("books.yml", "w") do |file|
    file.write(@book_list.to_yaml)
  end  
end

def run
  open()
    loop do
        puts "Select an option from the below choices"
        puts "a: Add a Book"
        puts "e: Exit"
        input = gets.chomp.downcase
        case input
            when 'a'
                add_book
            when 'e'
                save()
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
  @book_list.each do |books|
    puts books
  end
end

run
puts @book_list.inspect