book_list = []
review_list = []
#hash = { "book" => [book_list], "review" => [review_list] }

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
        puts "#{book_list[0]} -- #{review_list[0]}"
        puts "#{book_list[1]} -- #{review_list[1]}"
        break
      else
        break
    end  
end