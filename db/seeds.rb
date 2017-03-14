# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.destroy_all

location_data = [
          { name: "Oakland",
            state: "California",
            country: "USA"
          },
          { name: "San Francisco",
            state: "California",
            country: "USA"
          },
          { name: "Berkeley",
            state: "California",
            country: "USA"
          },
          { name: "San Jose",
            state: "California",
            country: "USA"
          },
          { name: "Las Vegas",
            state: "Nevada",
            country: "USA"
          },
          { name: "Seattle",
            state: "Washington",
            country: "USA"
          }
                ]

# user_data = [{
#   email:'test@test.com',
#
#
#   }]

locations = Location.create(location_data)
