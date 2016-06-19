# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
genre = ["Sports", "Movie", "Dinner", "Music", "Theater"]

100.times do

  Event.create(
  category: genre.sample,
  price: Faker::Commerce.price.to_f.round(2),
  theater_name: Faker::Company.name,
  name: Faker::Lorem.word,
  address: Faker::Address.street_address,
  state: Faker::Address.state_abbr,
  city: Faker::Address.city,
  zip: Faker::Address.zip,
  datetime: Faker::Date.forward(365),
  description: Faker::Lorem.sentence
    )

end
