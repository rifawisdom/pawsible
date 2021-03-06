
# 10.times do 
#   user = {}
#   user['password'] = 'asdf'
#   user['owner_name'] = Faker::Name.first_name 
#   user['dog_name'] = Faker::Dog.name
#   user['email'] = Faker::Internet.email
#   user['breed'] = Faker::Dog.breed 
#   user['profile_pic'] = Faker::Avatar.image
#   user['bio'] = Faker::Dog.meme_phrase
#   user['status'] = rand(0..4)
#   user['total_points'] = rand(1..200)

#   User.create(user)
# end

# Seed Challenges

6.times do 
  challenge = {}
  challenge['title'] = ["Roll Over", "Bath Time", "Doggy Date", "Healthy Snack", "Pats", "Explore"].sample 
  challenge['description'] = Faker::Seinfeld.quote
  challenge['points'] = rand(1..50)
  challenge['sponsor'] = Faker::Company.name

  Challenge.create(challenge)
end

# Seed Uploads

# 15.times do 
#   upload = {}
#   upload['user_id'] = rand(1..10)  
#   upload['challenge_id'] = rand(1..6)  
#   upload['media'] = "https://player.vimeo.com/external/210743842.hd.mp4?s=816e9088f196a9a11f754769faa509ed5ba82378&profile_id=119&oauth2_token_id=57447761"

#   Upload.create(upload)
# end



