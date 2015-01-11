# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   Mayor.create(name: 'Emanuel', city: cities.first)
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])

admin = User.create(email: "admin@email.com", password: "password", password_confirmation: "password")
admin.entries.create(
	author: Faker::Name.name, 
	photo_url: "http://i.imgur.com/FZ80pZC.jpg", 
	date_taken: Faker::Date.between(2.weeks.ago, Date.today))

users = User.create([
	{email: "bob@email.com", password: "password", password_confirmation: "password"},
	{email: "joe@email.com", password: "password", password_confirmation: "password"},
	{email: "rob@email.com", password: "password", password_confirmation: "password"}])

images = ["http://i.imgur.com/4vqPZ0u.jpg",
					"http://i.imgur.com/m3AiK7x.jpg",
					"http://i.imgur.com/kIPYoqr.jpg",
					"http://i.imgur.com/5OzJ5Wz.jpg"]

images.each do |img|
	User.all.sample.entries.create(
		author: Faker::Name.name, 
		photo_url: img, 
		date_taken: Faker::Date.between(2.weeks.ago, Date.today))
end