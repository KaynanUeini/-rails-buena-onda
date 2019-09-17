# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating cloths...'

cloths_attributes = [
  {
  name: 'saia',
  brand: 'zara', description: 'baita saia maravilhosa',
   price1: '150',
    category: 'saia'
  },
  {
    name: 'moletom',
    brand: 'renner',
    description: 'baita moletom maravilhoso',
     price1: '180',
     category: 'moletom'
   },
   {
    name: 'calça jeans',
    brand: 'sawary',
    description: 'baita calça jeans maravilhosa',
    price1: '200',
    category: 'jeans'}]

Cloth.create!(cloths_attributes)

puts "Created #{Cloth.count} cloths"

