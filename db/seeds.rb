User.create! name: "admin", email: "admin@gmail.com", password: "123456789",
password_confirmation: "123456789", role: 0
User.create! name: "huynhdung", email: "huynhdung@gmail.com", password: "123456789",
password_confirmation: "123456789", role: 1
User.create! name: "kotaro ", email: "kota@gmail.com", password: "123456789",
password_confirmation: "123456789", role: 1
user = User.find(id = 2)
15.times do
  name  = Faker::Name.name
  description = Faker::Lorem.sentence(2)
  message = Faker::Lorem.sentence(3)
  price = Faker::Number.number(6)
  Suggestion.create! name: name, description: description,
  message: message, price: price, user_id: user.id
end
user = User.find(id = 3)

5.times do
  name  = Faker::Name.name
  description = Faker::Lorem.sentence(2)
  message = Faker::Lorem.sentence(3)
  price = Faker::Number.number(6)
  Suggestion.create! name: name, description: description,
  message: message, price: price, user_id: user.id
end
