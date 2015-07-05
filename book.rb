class Book
  attr_writer :book_title, :genre, :status, :author, :full_listing, :review
  
  def full_listing
    @book_title + " by " + @author + " is in the genre " + @genre + " with a status of \"#{@status}\" " + " and a review of \"#{@review}\"."
  end
end