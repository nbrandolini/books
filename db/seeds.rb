# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author_list = [
  {
    name: "J.K. Rowling"
  },
  {
    name: "Stephen King"
  },
  {
    name: "William Shakesphere"
  }
]

author_list.each do |author|
  worked = Author.create(author)
  puts "#{author[:name]} has ID: #{worked.id}"
end

puts "\n======\n"

book_list = [
  {title: "Game of Thrones", description: "Hyper Violent", author_id: Author.first.id},
  {title: "99 Bottles of OOP", description: "Awesome", author_id: Author.last.id},
  {title: "Wizard of Oz", description: "Allegory", author_id: Author.all.sample.id},
]

book_list.each do |book|
  book = Book.create(book)
  puts "#{book[:title]} has ID: #{book.id}"
end


#
