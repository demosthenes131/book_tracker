class Book
  attr_writer :book_title, :genre, :status, :author, :title_author, :title_status, :review
  
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
  
  def review
    @review
  end  
  
  def title_author
    title_author = book_title + " by " + author
  end
  
  def title_status
    title_status = book_title + ": " + status
  end
  
  def title_genre
    title_genre = book_title + ": " + genre
  end  
  
end