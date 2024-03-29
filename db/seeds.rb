# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(name: "漫画")
Category.create(name: "映画")
Category.create(name: "ブログ")
Category.create(name: "レビュ")
Category.create(name: "記事")

50.times do |x|
  Article.create(title: Faker::Lorem.sentences(number: 1),
      body: Faker::Lorem.paragraph(sentence_count: 5),
      category_id: Faker::Number.between(from: 1, to: Category.count))
  Machine.create(
    name: Faker::Internet.url,
    ip: Faker::Internet.ip_v4_address)
end