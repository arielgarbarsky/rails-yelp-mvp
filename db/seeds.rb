puts "cleaning up database"
Restaurant.destroy_all
puts 'database is clean'

puts 'Creating 20 restaurants'
20.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
  puts "Restaurant #{restaurant.name} is created"
end

puts "done"
