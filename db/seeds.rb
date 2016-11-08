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
  {title: 'pixel painter', thumb: '/assets/pixel_painter_thumb.png', language: 'jQuery', description: 'an app which lets you make up to 60x60 pixel art', path: 'apps/sketch', github: 'https://github.com/gettinToasty/portfolio-site/blob/master/app/assets/javascripts/sketch.js'},
  {title: 'cipher', thumb: '/assets/cypher_thumb.png', language: 'Ruby', description: 'a simple encoder/decoder which can access several encoding libraries or generate a seeded library', path: 'apps/cypher', github: 'https://github.com/gettinToasty/cypher'},
  {title: 'tbd', thumb: '/assets/tbd_thumb.png', language: 'n/a', description: 'toasty\'s latest killer app is still under production', path: '', github: ''}])

shots = Shot.create([
  {caption: "Portfolio Photoshoot", date: "2016", img: "/assets/shot1.jpg"},
  {caption: "Modeling a scarf for Wiggle Wiggle", date: "2016", img: "/assets/shot2.jpg"},
  {caption: "Seoul Fashion Week S/S 2016", date: "2016", img: "/assets/shot3.jpg"},
  {caption: "Modeling for Bivouac", date: "2016", img: "/assets/shot4.jpg"},
  {caption: "Seoul Fashion Week S/S 2016", date: "2016", img: "/assets/shot5.jpg"}
  ])
