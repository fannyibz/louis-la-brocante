puts "> Deleting all records..."
User.destroy_all
Ad.destroy_all

puts ">>>> Starting creating users..."
User.create(email: "ringo@mail.com", password: '123456')
User.create(email: "john@mail.com", password: '123456')
puts "#{User.count} user(s) created"

puts ">>>> Starting creating ads for Ringo..."
5.times do 
  Ad.create(user: User.find_by(email: 'ringo@mail.com'), name: Faker::Commerce.product_name, department: Faker::Commerce.department(max: 1, fixed_amount: true), description: Faker::TvShows::SiliconValley.motto , price: Faker::Commerce.price)
end
puts "#{Ad.count} ad(s) created"

puts ">>>> Starting creating ads for John..."
5.times do 
  Ad.create(user: User.find_by(email: 'john@mail.com'), name: Faker::Commerce.product_name, department: Faker::Commerce.department(max: 1, fixed_amount: true), description: Faker::TvShows::SiliconValley.motto , price: Faker::Commerce.price)
end
puts "#{Ad.count} ad(s) created"