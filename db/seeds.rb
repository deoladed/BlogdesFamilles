# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'
# 10.times do
#   user = User.create!(last_name: Faker::Name.last_name, first_name: Faker::Name.first_name, email: Faker::Internet.email)
# end
# p "10 utilisateurs ont été créés"

# require 'faker'
# 10.times do |i|
#   user = Article.create!(title: Faker::BreakingBad.character, content: Faker::ChuckNorris.fact, user: User.find(i+1))
# end
# p "10 articles ont été créés"

# # require 'faker'
# # 5.times do |i|
# #   user = Category.create!(name: Faker::Hobbit.character)
# # end
# # p "10 articles ont été créés"

# 5.times do |i|
# article = Article.find(i+16)
# article.update(category: Category.find(i+1))
# end


require 'faker'
14.times do |i|
	Like.create(article: Article.find(rand(2..15)), user: User.find(rand(1..10)))
	p 'like created'
end
