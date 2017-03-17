# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.destroy_all
Article.destroy_all

location_data = [
          { name: "Gibraltar",
            state: "British Overseas Territory",
            image: "http://vipweddingsspain.com/wp-content/uploads/2016/02/Gibraltar.jpg",
            country: "United Kingdom",
            about: "The Rock of today is a bizarre anomaly of Moorish, Spanish, and—especially—British influences. There are double-decker buses, bobbies in helmets, and red mailboxes. Millions of pounds have been spent in developing its tourist potential, and a steady flow of expat Brits comes here from Spain to shop at Morrisons supermarket and other stores. This tiny British colony—nicknamed Gib or simply the Rock—whose impressive silhouette dominates the strait between Spain and Morocco, was one of the two Pillars of Hercules in ancient times, marking the western limits of the known world and commanding the narrow pathway between the Mediterranean Sea and the Atlantic Ocean. "
          },
          { name: "San Francisco",
            state: "California",
            image: "http://www.sftravel.com/sites/sftraveldev.prod.acquia-sites.com/files/SanFrancisco_0.jpg",
            country: "USA",
            about: "With its myriad hills and spectacular bay, San Francisco beguiles with natural beauty, vibrant neighborhoods, and contagious energy. From the hipster Mission District to the sassy Castro, from bustling Union Square to enduring Chinatown, this dynamic town thrives on variety. The city makes it wonderfully easy to tap into the good life, too: between San Francisco's hot arts scene, tempting boutiques, parks perfect for jogging or biking, and all those stellar locavore restaurants and cocktail bars, it's the ultimate destination for relaxed self-indulgence."
          },
          { name: "London",
            state: "Greater London",
            image: "http://cdn.pcwallart.com/images/london-at-night-hd-wallpaper-1.jpg",
            country: "United Kingdom",
            about: "History and tradition greet you at every turn in London; it's also one of the coolest, most modern cities in the world. If London contained only landmarks such as Westminster Abbey and Buckingham Palace, it would still rank as one of the world's great destinations, but Britain's capital is much more. People come to glimpse the royals and stop by hot galleries; to take in theater and trendy shops; to sample tea and scones or cutting-edge cuisine. When you need a break from the action, pop into a pub, relax in a park—or take a walk and make London your own."
          },
          { name: "San Jose",
            state: "California",
            image: "http://jamesmorrishomes.com/wp-content/uploads/2015/05/san_jose_downtown.jpg",
            country: "USA",
            about: "The San Jose of yesteryear -- a sleepy town of orchards, crops, and cattle -- is long gone. Founded in 1717, and hidden in the shadows of San Francisco, San Jose is now Northern California's largest city. Today the prosperity of Silicon Valley has transformed what was once an agricultural backwater into a thriving network of restaurants, shops, a state-of-the-art light-rail system, a sports arena (go Sharks!), and a reputable art scene. And despite all the growth, a number of surveys declare it one of the safest and sunniest cities in the nation."
          },
          { name: "Las Vegas",
            state: "Nevada",
            image: "http://qtxasset.com/2016-12/las-vegas.jpg?YdgJOxAi7L2fpZtpby8TQORQi3wxsmrc",
            country: "USA",
            about: "Las Vegas knows what everyone wants and delivers it in spades. Megaresorts fund their 45-foot bronze lions, half-size Eiffel Towers, and towering glass pyramids with the collective desires and dollars of more than 30 million annual visitors. From a Wolfgang Puck dinner to a Wolfpack-like adventure on the Strip, you're sure to find your perfect indulgence. Swim up to a blackjack table, chow down at a buffet, or chill out in an ultralounge. A Las Vegas vacation disorients and delights; when you're here, you're all-in, and the real world seems far out."
          },
          { name: "Seattle",
            state: "Washington",
            image: "http://www.homewoodsuitesseattle.com/img/home/hotel-near-seattle-space-needle.jpg",
            country: "USA",
            about: "Seattle is a city of many neighborhoods: Eclectic, urban, outdoorsy, artsy, gritty, down-to-earth, or posh—it's all here, from the quirky character of the Seattle Waterfront and the eccentric so-called Republic of Fremont, to hipsters walking baby carriages past aging mansions on Capitol Hill. There's something for just about everyone within this vibrant Emerald City."
          }
          ]

locations = Location.create(location_data)

