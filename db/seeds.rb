# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

  # user1 = User.create(email: "test@test.com", password: "test1234")
  @user = User.create(email: "test@test.com", password: "test1234")

  3.times do
    @trip = Trip.create(
      name: Faker::Movies::LordOfTheRings.location,
      user_id: @user.id
      )
      
      3.times do
        @location = Location.create(
          name: Faker::Movies::LordOfTheRings.location,
          trip_id: @trip.id
          )

          3.times do
      Address.create(
                  street: Faker::Address.street_name,
                  state: Faker::Address.state,
                  city: Faker::Address.city,
                  country: Faker::Address.country,
                  region: Faker::Address.time_zone,
                  zip: Faker::Address.zip,
                  location_id: @location.id
  )

        end
      end
    end



