# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create!(username: "AAAA", first_name: "Jennifer", last_name: "Denchie", password: "123")
u2 = User.create!(username: "CeeCee", first_name: "Cherelle", last_name: "Cunningham", password: "456")
u3 = User.create!(username: "liz", first_name: "Elizabeth", last_name: "Egunjobi", password: "789")

p1 = Post.create!(date:DateTime.strptime("02/16/2019", "%m/%d/%Y"), heading: "sit amet" ,body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
p2 = Post.create!(date:DateTime.strptime("02/16/2019", "%m/%d/%Y"), heading: "arcu odio" ,body: "TNullam aliquam arcu odio, iaculis ornare nisi porttitor!")
p3 = Post.create!(date:DateTime.strptime("02/16/2019", "%m/%d/%Y"), heading: "metus in" ,body: "Aenean quis metus in leo finibus sagittis.?")

a1 = Artist.create!(name: "Deola", profile_image: "Some pic", statement: "Ut iaculis lectus sollicitudin, mattis ligula vitae, commodo urna.", artwork: "dog")
a2 = Artist.create!(name: "Zay", profile_image: "Some pic", statement: "Praesent eget rhoncus leo. Nunc a leo lorem", artwork: "cat")
a3 = Artist.create!(name: "Misah", profile_image: "Some pic", statement: "Quisque aliquet nulla lectus, non dignissim libero dictum eu.", artwork: "mouse")

e1 = Event.create!(name: "LETS SHOW STUFF", date:DateTime.strptime("09/14/2009", "%m/%d/%Y") , location: "Exhbition", body: "123")
e2 = Event.create!(name: "lETS TALK", date:DateTime.strptime("09/14/2009", "%m/%d/%Y")  ,location: "Panel discussion", body: "456")
e3 = Event.create!(name: "LETS MAKE STUFF", date: DateTime.strptime("09/14/2009", "%m/%d/%Y"), location: "Workshop", body: "Quisque aliquet nulla lectus, non dignissim libero dictum eu")
