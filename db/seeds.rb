require 'rest-client'
require 'json'

#Get request to the API then parse all the data
response_string = RestClient.get('http://api.tvmaze.com/shows')
response_hash = JSON.parse(response_string)

#Iterate through each show from API and create data for the Rails API backend
response_hash.each do |show|
  Show.create(title: show["name"], genre: show["genres"].join(", "), schedule: show["schedule"]["days"][0], rating: show["rating"]["average"], url: show["officialSite"], description: show["summary"], image: show["image"]["original"])
end

puts "Finished Seeding api data"

# t.string "name"
# t.string "password"

User.create(name: "Mikey", password: "123456")
User.create(name: "Joyce", password: "654321")
User.create(name: "Thao", password: "password1234")
User.create(name: "Satya", password: "password4321")

# t.string "title"
# t.string "genre"
# t.string "schedule"
# t.integer "rating"

Show.create(title: "Some Show", genre: "Action", schedule: "Monday", rating: 95)
Show.create(title: "Another Show", genre: "Romance", schedule: "Tuesday", rating: 50)
Show.create(title: "Even Better Show", genre: "Comedy", schedule: "Friday", rating: 20)
Show.create(title: "Eh Show", genre: "Thriller", schedule: "Sunday", rating: 80)
# Show.create(title: show["name"], genre: response_hash["genres"].join(", "), schedule: response_hash["schedule"]["days"][0], rating: response_hash["rating"]["average"])

#t.integer "user_id"
#t.integer "show_id"

Favorite.create(user_id: 1, show_id: 1)
Favorite.create(user_id: 1, show_id: 2)
Favorite.create(user_id: 1, show_id: 10)
Favorite.create(user_id: 1, show_id: 20)
Favorite.create(user_id: 2, show_id: 5)
Favorite.create(user_id: 2, show_id: 7)
Favorite.create(user_id: 2, show_id: 8)
Favorite.create(user_id: 2, show_id: 9)
Favorite.create(user_id: 3, show_id: 8)
Favorite.create(user_id: 3, show_id: 2)
Favorite.create(user_id: 3, show_id: 19)
Favorite.create(user_id: 3, show_id: 17)
Favorite.create(user_id: 4, show_id: 60)
Favorite.create(user_id: 4, show_id: 3)
Favorite.create(user_id: 4, show_id: 12)
Favorite.create(user_id: 4, show_id: 11)

puts "Finished Seeding all data"
