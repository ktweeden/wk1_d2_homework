require'minitest/autorun'
require_relative'../library.rb'


# Model a Library as a class.
# Create a method that changes the rental details of a book by taking in the
# title of the book, the student renting it and the date it's due to be returned.

class TestLibraryTeam < Minitest::Test
  def setup
    books = [
              {
               title: "lord_of_the_rings",
               rental_details: {
                student_name: "Jeff",
                date: "01/12/16"
               }
             },
             {
               title: "Homegoing",
               rental_details: {
                 student_name: "Kate",
                 date: "03/03/18"
               }
             },
             {
               title: "Bad Feminist",
               rental_details: {
                 student_name: "Liz",
                 date: "02/04/18"
               }
             }
          ]
    @library = Library.new(books)
    @sample_book = {
       title: "Homegoing",
       rental_details: {
         student_name: "Kate",
         date: "03/03/18"
       }
     }

    @full_book_array = [
        {
         title: "lord_of_the_rings",
         rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
         }
       },
       {
         title: "Homegoing",
         rental_details: {
           student_name: "Kate",
           date: "03/03/18"
         }
       },
       {
         title: "Bad Feminist",
         rental_details: {
           student_name: "Liz",
           date: "02/04/18"
         }
       },
       {
         title: "1984",
         rental_details: {
           student_name: "",
           date: ""
         }
       }
     ]
  end

  def test_get_books
    assert_equal(3, @library.books.length())
  end

  def test_get_book_info
    assert_equal(@sample_book, @library.get_book_info("Homegoing"))
  end

  def test_get_rental_details
    assert_equal(@sample_book[:rental_details], @library.get_rental_details("Homegoing"))
  end

  def test_add_book
    @library.add_book("1984")
    assert_equal(@full_book_array, @library.books)
  end

  def test_change_rental_details
    @library.change_rental_details("Homegoing", "James", "02/04/19")
    details = @library.books[1][:rental_details]
    assert_equal({student_name: "James", date: "02/04/19"}, details)
  end
end
