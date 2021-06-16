5.times do
    User.create(
        name: Faker::Name.name  ,
        adress: Faker::Address.street_address,fetchPrime
        email: Faker::Internet.email ,
        password: "PASSWORD"
    )
end
200.times do
    p = Product.create(
    name: Faker::Commerce.product_name,
    title: Faker::Commerce.department,
    description: Faker::Commerce.material,
    price: Faker::Commerce.price ,
    product_image: Faker::LoremFlickr.image,
    star: rand(0..5)
    )
      end
    200.times do
        Review.create(
            body: Faker::Lorem.unique,
            rating: rand(1..5),
            product_id: rand(1..200),
            user_id: rand(1..5)
          )

end
