class Library

  attr_reader :books

  def initialize(books = [])
    @books = books
  end

  def get_book_info(title)
    @books.each{|x| return x if x[:title] == title}
  end

  def get_rental_details(title)
    book = @books.find{|x| x[:title] == title}
    return book[:rental_details]
  end

  def add_book(title)
    new_book = {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books.push(new_book)
  end

  def change_rental_details(title, name, return_date)
    new_details = {student_name: name, date: return_date}
    book = @books.find{|x| x[:title] == title}
    book[:rental_details] = new_details
  end
end
