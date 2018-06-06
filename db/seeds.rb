# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '+33 45 56 67 78',
    category:     'italian'

  },
 {
    name:         'La fourchette',
    address:      '45 avenude de Lyon, Lyon E2 7JE',
    phone_number: '+45 43 34 67 78',
    category:     'italian'

  },
   {
    name:         'Goodres',
    address:      'Barcelona',
    phone_number: '+34 45 56 67 78',
    category:     'chinese'

  },
   {
    name:         'miamiam',
    address:      '7JE in Paris',
    phone_number: '+33 45 56 67 78',
    category:     'japanese'

  },
   {
    name:         'Easyfork',
    address:      'lewagon Barcelona',
    phone_number: '+33 45 56 67 78',
    category:     'belgian'

  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
