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

            image: "http://www.marklillyphotography.com/wp-content/uploads/2015/02/LakeMerritt_LakeChalet_Pano_Color_Web_2500x1126_20130306_rev1.jpg",
            country: "USA"
          },
          { name: "San Francisco",
            state: "California",

            image: "http://www.sftravel.com/sites/sftraveldev.prod.acquia-sites.com/files/SanFrancisco_0.jpg",
            country: "USA"
          },
          { name: "Berkeley",
            state: "California",

            image: "https://i.ytimg.com/vi/qJFYIuW0_9s/maxresdefault.jpg",
            country: "USA"
          },
          { name: "San Jose",
            state: "California",

            image: "http://jamesmorrishomes.com/wp-content/uploads/2015/05/san_jose_downtown.jpg",
            country: "USA"
          },
          { name: "Las Vegas",
            state: "Nevada",

            image: "http://qtxasset.com/2016-12/las-vegas.jpg?YdgJOxAi7L2fpZtpby8TQORQi3wxsmrc",
            country: "USA"
          },
          { name: "Seattle",
            state: "Washington",
            image: "http://www.homewoodsuitesseattle.com/img/home/hotel-near-seattle-space-needle.jpg",
            country: "USA"
          }
          ]

locations = Location.create(location_data)

# user_data = [{
#   email:'test@test.com',
#
#
#   }]

locations = Location.create(location_data)
