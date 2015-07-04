class Book
  attr_accessor :book_title, :genre, :status, :author, :title_author, :title_status, :review
  
  def title_author
    @book_title + " by " + @author
  end
  
  def title_status
    @book_title + ": " + @status
  end
  
  def title_genre
    @book_title + ": " + @genre
  end  
  
end