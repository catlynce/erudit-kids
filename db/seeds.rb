# puts "Destroy data before seeding... this could take some time!!"

# User.destroy_all
# # Kid.destroy_all

# puts "Create nuno@alvesmartins.eu user..."

# user = User.new(
#     email: 'nuno@alvesmartins.eu',
#     password: 'password',
#     admin: true
# )
# user.skip_confirmation!
# user.save!

# puts "Add kids to nuno@alvesmartins.eu"
# Kid.create! name: 'Mateus', username: 'mateus', email: 'mateus@alvesmartins.eu', birthdate: '25-04-2010', user: user
# Kid.create! name: 'Moisés', username: 'moises', email: 'moises@alvesmartins.eu', birthdate: '14-09-2012', user: user

# puts "Add resources to nuno@alvesmartins.eu kids"

# Resource.create! name: 'Youtube', url: 'https://www.youtube.com/watch?v=DREsDEUWPYc&list=PLEM4vOSCprStzppPemEYAF6ZEUrQYj5N5', user: user
# Resource.create! name: 'Scratch', url: 'https://scratch.mit.edu/accounts/login/', user: user

file  = File.open(File.join(Rails.root,'app/assets/images/animals.01.jpg'))
# puts file
Cloudinary::Uploader.upload(file, public_id: "testing", overwrite: true)