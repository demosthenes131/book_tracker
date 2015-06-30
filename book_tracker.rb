book_list = []

loop do
puts "Add a book! "
book = $stdin.gets.chomp
book_list.push(book)
puts book_list.inspect
end
