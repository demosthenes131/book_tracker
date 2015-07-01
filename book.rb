class Book
  attr_writer :book_title, :genre, :status, :author, :title_author, :title_status
  
  def book_title
    @book_title
  end
  
  def genre
    @genre
  end
  
  def status
    @status
  end
  
  def author
    @author
  end
  
  def title_author
    @title_author
    title_author = book_title + " by " + author
  end
  
  def title_status
    @title_status
    title_status = book_title + ": " + status
  end
  
  def title_genre
    @title_genre
    title_genre = book_title + ": " + genre
  end  
  
end 

book1 = Book.new
book1.book_title = "Ender's Game"
book1.genre = "Science Fiction"
book1.status = "Read"
book1.author = "Orson Scott Card"
puts book1
puts book1.title_author
puts book1.title_status
puts book1.title_genre
