# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


%w{Derek Linda John Ugochi Jenny Jayson Ashwani Nithya Kusuma Jin Vinathi Kishore Rajesh Jody}.sort.each do |person|
  Customer.create name: person, loan_id: rand(person.length) + 1
end
