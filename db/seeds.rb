# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, Londodryhdr',
    phone:        '555555555',
    category:     'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone:        '555555555',
    category:     'french'
  },
  {
    name:         'vavavoom',
    address:      '7 Boundary St, dfhdf',
    phone:        '66666655',
    category:     'chinese'
  },
  {
    name:         'tfdghdffghm',
    address:      '7 Boundarydfhdfdh',
    phone:        '58888888',
    category:     'italian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
