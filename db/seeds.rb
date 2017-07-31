User.create!(name:  "Mitch",
             email: "test@test.com",
             password:              "password",
             password_confirmation: "password")

99.times do |n|
  name  = Faker::Name.name
  email = "test#{n+1}@test.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

75.times do
  content = "#{Faker::LordOfTheRings.character} at #{Faker::LordOfTheRings.location}"
  User.first(10).each { |user| user.posts.create!(content: content) }
end
