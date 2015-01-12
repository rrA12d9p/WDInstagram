['registered', 'banned', 'moderator', 'admin'].each do |role|
  Role.find_or_create_by({name: role})
end

admin = User.create(email: "admin@email.com", username: "admin", password: "password", password_confirmation: "password")
admin.update(role: Role.find_by_name('admin'))
admin.entries.create(
	author: Faker::Name.name, 
	photo_url: "http://i.imgur.com/FZ80pZC.jpg", 
	date_taken: Faker::Date.between(2.weeks.ago, Date.today))

users = User.create([
	{email: "bob@email.com", username: "bob", password: "password", password_confirmation: "password"},
	{email: "joe@email.com", username: "joe", password: "password", password_confirmation: "password"},
	{email: "dan@email.com", username: "dan", password: "password", password_confirmation: "password"}])

images = ["http://i.imgur.com/4vqPZ0u.jpg",
					"http://i.imgur.com/m3AiK7x.jpg",
					"http://i.imgur.com/kIPYoqr.jpg"]

images.each do |img|
	User.all.sample.entries.create(
		author: Faker::Name.name, 
		photo_url: img, 
		date_taken: Faker::Date.between(2.weeks.ago, Date.today))
end