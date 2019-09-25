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
    name: 'SAIA MIDI LISA COM FENDA',
    brand: 'Zara',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci incidunt a facilis.',
    price1: '150',
    price2: '100',
    category: 'Saia',
    stock: '20',
    size: 'P'
  },
  {
    name: 'SAIA EM RIBANA COM ELÁSTICO NO CÓS',
    brand: 'renner',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci incidunt a facilis.',
    price1: '200',
    price2: '180',
    category: 'Saia',
    stock: '15',
    size: 'M'
  },
  {
    name: 'SAIA EM RETILÍNEA LISA COM FENDA',
    brand: 'forever21',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci incidunt a facilis.',
    price1: '80',
    price2: '60',
    category: 'Saia',
    stock: '5',
    size: 'G'
  },
  {
    name: 'SAIA EVASÊ EM MATERIAL SINTÉTICO COM RECORTE DE SUEDE',
    brand: 'Riachuelo',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci incidunt a facilis.',
    price1: '150',
    price2: '75',
    category: 'Saia',
    stock: '12',
    size: 'GG'
  },
  {
    name: 'SAIA EM SUEDINE COM FIT SEREIA E CINTO FORRADO',
    brand: 'C&A',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci incidunt a facilis.',
    price1: '90',
    price2: '80',
    category: 'Saia',
    stock: '8',
    size: 'PP'
  },
  {
    name: 'SAIA TUBO POÁ COM ZÍPER NAS COSTAS',
    brand: 'C&A',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci incidunt a facilis.',
    price1: '120',
    category: 'Saia',
    stock: '8',
    size: 'M'
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

