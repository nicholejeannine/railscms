# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if User.count == 0
User.create(:email => 'admin@admin.com', :name => 'admin', :password => 'password')
end

if Album.count == 0
  Album.create([{title: "First Album", description: "First description", user_id: 1},{title: "Second Album", description: "Second description", user_id: 1}])
  Album.first.photos.create([{url: '/albums/1/photos/1', caption: 'ahhh a photo'}, {url: '/albums/1/photos/2', caption: 'just not blank!'}])
end


