# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if User.find_by_username("Jen").nil?
  User.create!(username: "Jen", first_name: "Jennifer", last_name: "Denchie")
else
  puts "User with name Jen already exists"
end

if User.find_by_username("CeeCee").nil?
User.create!(username: "CeeCee", first_name: "Cherelle", last_name: "Cunningham")
else
  puts "User with name CeeCee already exists"
end

if User.find_by_username("liz").nil?
User.create!(username: "liz", first_name: "Elizabeth", last_name: "Egunjobi")
else
  puts "User with name liz already exists"
end
# POSTS
p1 = Post.create!(date:DateTime.strptime("02/16/2019", "%d/%m/%Y"), heading: "sit amet" ,body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.") if Post.find_by_heading("sit amet").nil?

p2 = Post.create!(date:DateTime.strptime("02/16/2019", "%d/%m/%Y"), heading: "arcu odio" ,body: "TNullam aliquam arcu odio, iaculis ornare nisi porttitor!") if Post.find_by_heading("arcu odio").nil?

p3 = Post.create!(date:DateTime.strptime("02/16/2019", "%d/%m/%Y"), heading: "metus in" ,body: "Aenean quis metus in leo finibus sagittis.?")if Post.find_by_heading("metus in").nil?

# ARTISTS
a1 = Artist.create!(name: "Deola", profile_image: "Some pic", statement: "Ut iaculis lectus sollicitudin, mattis ligula vitae, commodo urna.", artwork: "dog") if Artist.find_by_name("Deola").nil?

a2 = Artist.create!(name: "Zay", profile_image: "Some pic", statement: "Praesent eget rhoncus leo. Nunc a leo lorem", artwork: "cat")if Artist.find_by_name("Zay").nil?

a3 = Artist.create!(name: "Misah", profile_image: "Some pic", statement: "Quisque aliquet nulla lectus, non dignissim libero dictum eu.", artwork: "mouse")if Artist.find_by_name("Misah").nil?

# # EVENTS
e1 = Event.create!(name: "LETS SHOW STUFF", date:DateTime.strptime("09/14/2009", "%m/%d/%Y") , location: "Exhbition", body: "123")if Event.find_by_name("LETS SHOW STUFF").nil?

e2 = Event.create!(name: "lETS TALK", date:DateTime.strptime("09/14/2009", "%m/%d/%Y")  ,location: "Panel discussion", body: "456")if Event.find_by_name("lETS TALK").nil?

e3 = Event.create!(name: "LETS MAKE STUFF", date: DateTime.strptime("09/14/2009", "%m/%d/%Y"), location: "Workshop", body: "Quisque aliquet nulla lectus, non dignissim libero dictum eu")if Event.find_by_name("LETS MAKE STUFF").nil?
