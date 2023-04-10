# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# 1.upto(10) do |i|
#     User.create(name: "User #{i}")
#  end

 users=[*1..10]
 rate=[*1..5]
 posts=[*1..50000]

 1.upto(50000) do |i|
   post= Post.create(title: "title #{i}",
        body: Faker::Lorem.sentence,
        user_id: users[rand(10)])
        puts post.errors.messages  
        puts users[rand(10)]
end

 1.upto(20000) do |i|
    Review.create(rate: rate[rand(5)]
    ,comment: Faker::Lorem.sentence,
    user_id: users[rand(10)],
    post_id: posts[rand(50000)]
)
 end