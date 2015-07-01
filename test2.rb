book_list = []
review_list = []
hash = { [book_list] => [review_list] }

loop do
  puts "Do you want to add a book? (yes or no)"
  input = gets.chomp.downcase
    case input
      when 'yes'
        puts "Add a book! "
        book = gets.chomp
        book_list.push(book)
        puts "How about a short, one sentence review? (yes or no)"
          input = gets.chomp.downcase
            case input
            when 'yes'
              puts "Add your review!"
              review = gets.chomp
              review_list.push(review)
            when 'no'
            end
      when 'no'
        puts book_list.inspect
        puts hash.inspect
        hash.each { |key, value| puts "#{key} -- #{value}" }
        break
      else
        break
    end  
end