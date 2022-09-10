# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)






require 'faker'

puts "Cleaning database"
# rails db:seed:replant
Sight.destroy_all
Citytour.destroy_all
User.destroy_all

puts 'Creating user'
languages = %w(german english french spanish dutch portuguese chinese)

user = User.create!(
  first_name: "Zack",
  last_name: "Levy",
  name: "Zack Levy",
  nickname: "Z",
  email: "zacklevy@email.com",
  password: "zlevy210",
  payment_details: "12345678910111213 01/23 056",
  country: "Israel",
  language_list: "English, Hebrew, Spanish, Thai(kitchen)",
  guide:  true,
)

user = User.create!(
  first_name: "Melchior-Christoph",
  last_name: "von Brincken",
  name:  "Melchior-Christoph von Brincken",
  nickname: "Melchior",
  email: "christoph.brincken@gmx.at",
  password: "123456",
  payment_details: "4711",
  country: "Austria",
  language_list: "English, german",
  guide:  true,
)
  # puts "User finished!"



# THIS MIGHT NOT WORK
# sight = Sight.create!(
#   name: "Schönbrunn Palace",
#   city: "Vienna",
#   address: "Schönbrunner Schloßstraße 47, 1130 Wien",
#   longitude: 16.311865,
#   latitude: 48.184517,
#   {
#       photo: open("res.cloudinary.com/dthgfvayv/image/upload/v1662805199/development/wien_schoenbrunn_absfs0.jpg")
#   }
# )
# # end THIS MIGHT NOT WORK





  sight = Sight.create!(
    name: "Dead Sea",
    city: "Ein Bokek",
    address: "Ein Bokek, Israel",
    longitude: 31.2002,
    latitude: 35.3625,
    guide: user
  )

  # puts "Sight finished!"

  citytour = Citytour.create!(
    name: "Masada/Dead Sea Tour",
    overview: "Visit Masada and the Dead Sea in one day, tours leaving from Jerusalem and Tel Aviv.",
    price: rand(0..400),
    guide: user
  )
  # puts "Citytour finished!"
puts "All finished!"


puts 'Creating 10 Sights'
user = User.create!(
  name: Faker::Name.name,
  nickname: Faker::FunnyName.name,
  email: Faker::Internet.email,
  password: "secret",
  payment_details: Faker::Bank.account_number,
  country: Faker::Address.country,
  language_list: [languages.sample],
  guide: Faker::Boolean.boolean(true_ratio: 0.5)
)

# Schoenbrunn
# https://res.cloudinary.com/dthgfvayv/image/upload/v1662805199/development/wien_schoenbrunn_absfs0.jpg

sight = Sight.create!(
  name: "Schönbrunn Palace",
  city: "Vienna",
  address: "Schönbrunner Schloßstraße 47, 1130 Wien",
  longitude: 16.311865,
  latitude: 48.184517,
  guide: user
)


# Hofburg
# https://res.cloudinary.com/dthgfvayv/image/upload/v1662805196/development/wien_hofburg_touioa.jpg

sight = Sight.create!(
  name: "Hofburg Palace",
  city: "Vienna",
  address: "Vienna, 1010 Austria",
  longitude: 16.366142,
  latitude: 48.207867,
  guide: user
)

# Tiergarten
# https://res.cloudinary.com/dthgfvayv/image/upload/v1662805197/development/wien_tiergarten_sblgx9.jpg

sight = Sight.create!(
  name: "Tiergarten Schönbrunn",
  city: "Vienna",
  address: "Maxingstraße 13b",
  longitude: 16.302778,
  latitude: 48.182222,
  guide: user
)

# Riesenrad
# https://res.cloudinary.com/dthgfvayv/image/upload/v1662805199/development/Wien_Riesenrad_v4etl5.jpg

sight = Sight.create!(
  name: "Wiener Riesenrad",
  city: "Vienna",
  address: "Riesenradpl. 1",
  longitude: 16.395833,
  latitude: 48.216667,
  guide: user
)

# Albertina
# https://res.cloudinary.com/dthgfvayv/image/upload/v1662805197/development/wien_albertina_s0ywu0.jpg

sight = Sight.create!(
  name: "Albertina",
  city: "Vienna",
  address: "Albertinaplatz 1, 1010 Vienna",
  longitude: 16.367778,
  latitude: 48.204444,
  guide: user
)
# )
# sight = Sight.create!(
#   name: "Kunsthistorisches Museum",
#   city: "Vienna",
#   address: "Maria-Theresien-Platz",
#   longitude: 16.361667,
#   latitude: 48.203611,
#   guide: user,
#   photo: URI.open('')
# )

# Donauturm
# https://res.cloudinary.com/dthgfvayv/image/upload/v1662805197/development/wien_donauturm_dcy4nv.jpg

sight = Sight.create!(
  name: "Donauturm",
  city: "Vienna",
  address: " Donauturm Platz 1",
  longitude: 16.410833,
  latitude: 48.24,
  guide: user
)

# Naturhistorisches Museum
# https://res.cloudinary.com/dthgfvayv/image/upload/v1662805197/development/wien_naturhistorisches_museum_cbhuop.jpg

sight = Sight.create!(
  name: "Naturhistorisches Museum",
  city: "Vienna",
  address: "Burgring 7",
  longitude: 16.359722,
  latitude: 48.205278,
  guide: user
)

# Schatzkammer
# https://res.cloudinary.com/dthgfvayv/image/upload/v1662805198/development/Wien_schatzkammer_fqsohl.jpg

sight = Sight.create!(
  name: "Schatzkammer",
  city: "Vienna",
  address: "Hofburg, Schweizerhof",
  longitude: 16.365556,
  latitude: 48.206667,
  guide: user
)

# Spanische Reitschule
# https://res.cloudinary.com/dthgfvayv/image/upload/v1662805198/development/wien_spanish_riding_school_gtvmjx.jpg

sight = Sight.create!(
  name: "Spanish Riding School",
  city: "Vienna",
  address: "Michaelerplatz 1",
  longitude: 16.366944,
  latitude: 48.206944,
  guide: user
)

puts "Creating bookings"
Citytour.all.each do |tour|
  Booking.create!(
    start: DateTime.now + 1.days,
    end: DateTime.now + 1.days,
    quantity: 2,
    user: User.second,
    citytour: tour
  )
  Booking.all.each do |booking|
    5.times do
      Review.create!(
        rating: rand(0..10),
        reviewtext: Faker::Lorem.sentence(word_count: 20),
        booking: booking,
        isguide: Faker::Boolean.boolean(true_ratio: 0.5)
      )
    end
  end
end
puts "Finished creating bookings"

# puts "Creating reviews"
# Booking.all.each do |booking|
#   5.times do
#     Review.create!(
#       rating: rand(0..10),
#       reviewtext: Faker::Lorem.sentence(word_count: 20),
#       booking_id: booking,
#       isguide: Faker::Boolean.boolean(true_ratio: 0.5)
#     )
#   end
# end
# puts "Finished creating reviews"

puts "All finished!"
