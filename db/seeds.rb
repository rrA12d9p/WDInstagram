['registered', 'banned', 'moderator', 'admin'].each do |role|
  Role.find_or_create_by({name: role})
end

admin = User.create(email: "admin@superbowlgifs.com", username: "admin", password: "password", password_confirmation: "password")
admin.update(role: Role.find_by_name('admin'))
admin.entries.create([
	{author: "Trey", photo_url: "http://pixel.nymag.com/imgs/daily/intelligencer/2015/02/01/super-bowl-gifs/katy-sharks.nocrop.w529.h316.2x.gif", date_taken: "2/1/2015"},
	{author: "Trey", photo_url: "http://pixel.nymag.com/imgs/daily/intelligencer/2015/02/01/super-bowl-gifs/lynch-skittles.nocrop.w529.h316.2x.gif", date_taken: "2/1/2015"},
	{author: "Trey", photo_url: "http://pixel.nymag.com/imgs/daily/intelligencer/2015/02/01/super-bowl-gifs/brady-td.nocrop.w529.h316.2x.gif", date_taken: "2/1/2015"},
	{author: "Trey", photo_url: "http://pixel.nymag.com/imgs/daily/intelligencer/2015/02/01/super-bowl-gifs/brady-lafell.nocrop.w529.h316.2x.gif", date_taken: "2/1/2015"},
	{author: "Trey", photo_url: "http://pixel.nymag.com/imgs/daily/intelligencer/2015/02/01/super-bowl-gifs/tyler.nocrop.w529.h316.2x.gif", date_taken: "2/1/2015"},
	{author: "Trey", photo_url: "http://pixel.nymag.com/imgs/daily/intelligencer/2015/02/01/super-bowl-gifs/lynch-td.nocrop.w529.h316.2x.gif", date_taken: "2/1/2015"},
	{author: "Trey", photo_url: "http://pixel.nymag.com/imgs/daily/intelligencer/2015/02/01/super-bowl-gifs/alt-matthews-td.nocrop.w529.h316.2x.gif", date_taken: "2/1/2015"},
	{author: "Trey", photo_url: "http://pixel.nymag.com/imgs/daily/intelligencer/2015/02/01/super-bowl-gifs/matthews-2ndhalf-catch.nocrop.w529.h316.2x.gif", date_taken: "2/1/2015"},
	{author: "Trey", photo_url: "http://pixel.nymag.com/imgs/daily/intelligencer/2015/02/01/super-bowl-gifs/baldwin-pick-td.nocrop.w529.h316.2x.gif", date_taken: "2/1/2015"},
	{author: "Trey", photo_url: "http://pixel.nymag.com/imgs/daily/intelligencer/2015/02/01/super-bowl-gifs/baldwin-poop.nocrop.w529.h316.2x.gif", date_taken: "2/1/2015"}
])

# users = User.create([
# 	{email: "bob@email.com", username: "bob", password: "password", password_confirmation: "password"},
# 	{email: "joe@email.com", username: "joe", password: "password", password_confirmation: "password"},
# 	{email: "dan@email.com", username: "dan", password: "password", password_confirmation: "password"}])

# images = ["http://i.imgur.com/4vqPZ0u.jpg",
# 					"http://i.imgur.com/m3AiK7x.jpg",
# 					"http://i.imgur.com/kIPYoqr.jpg"]

# images.each do |img|
# 	User.all.sample.entries.create(
# 		author: Faker::Name.name, 
# 		photo_url: img, 
# 		date_taken: Faker::Date.between(2.weeks.ago, Date.today))
# end