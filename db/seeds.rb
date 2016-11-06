User.create! name: "Admin", email: "admin@gmail.com", password: "123456789", role: 0
5.times do
  name  = Faker::Name.name
  description = Faker::Lorem.sentence(5)
  Category.create! name: name, description: description
end

categories = Category.take(5)
categories.each do |category|
  15.times do
    name = Faker::Lorem.sentence
    description = Faker::Lorem.sentence
    price = Faker::Number.number(6)
    rating = rand(1..5)
    Product.create! name: name, description: description, price: price,
      category_id: category.id, rating: rating
  end
end
