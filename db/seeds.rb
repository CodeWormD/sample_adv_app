User.create!(name: "daniil",
             email: "123@mail.ru",
             password: "111111",
             password_confirmation: "111111",
             admin: true)

90.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@adwraoial.org"
  password = "password#{n+1}"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end