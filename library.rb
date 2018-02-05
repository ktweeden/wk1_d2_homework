class Library

  attr_reader :books

  def initialize()
    @books = [
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
  end

  def get_book_info(title)
    @books.each{|x| return x if x[:title] == title}
  end

  def get_rental_details(title)
    @books.each{|x| return x[:rental_details] if x[:title] == title}
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
    @books.each{|x| x[:rental_details] = new_details if x[:title] == title}
  end
end
