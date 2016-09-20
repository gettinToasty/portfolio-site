# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

designs = Design.create([{title: 'fatigue', description: 'here\'s my clothing brand', thumb: '/assets/fatigue_thumb.jpg'},
  {title: 'adroit', description: 'here is some stuff i did for my friends', thumb: '/assets/adroit_thumb.png'},
  {title: 'toasty', description: 'the toasty brand identity package', thumb: '/assets/toasty_thumb.png'},
  {title: 'misc', description: 'various other stuff i did', thumb: '/assets/misc_thumb.jpg',}])

apps = App.create([
  {title: 'pixel painter', thumb: '/assets/pixel_painter_thumb.png', description: 'an app which lets you make up to 60x60 pixel art', path: 'apps/sketch'},
  {title: 'cypher', thumb: '/assets/cypher_thumb.png', description: 'a simple encoder/decoder which can access several encoding libraries or generate a seeded library', path: 'apps/cypher'},
  {title: 'TBD', thumb: 'toasty\'s latest killer app is still under production', description: '', path: ''}])

shots = Shot.create([
  {caption: "", date: "2016", img: "/assets/shot1.jpg"},
  {caption: "", date: "2016", img: "/assets/shot2.jpg"},
  {caption: "", date: "2016", img: "/assets/shot3.jpg"},
  {caption: "", date: "2016", img: "/assets/shot4.jpg"},
  {caption: "", date: "2016", img: "/assets/shot5.jpg"}
  ])
