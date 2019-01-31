# frozen_string_literal: true

require 'faker'

# On cree les users
10.times do
  User.create!(last_name: Faker::Name.last_name, first_name: Faker::Name.first_name, email: Faker::Internet.email)
end
p '10 utilisateurs ont été créés'

# Puis les articles
10.times do
  Article.create!(title: Faker::BreakingBad.character, content: Faker::ChuckNorris.fact, user: User.all.sample)
end
p '10 articles ont été créés'

# les categories d'articles
5.times do
  Category.create!(name: Faker::Hobbit.character)
end
p '10 articles ont été créés'

# On associe chaque article a une categorie :
10.times do |i|
  Article.find(i + 1).update(category: Category.all.sample)
end

# On cree des commentaires, chacun associes a un article et un user
15.times do
  Comment.create(content: Faker::ChuckNorris.fact, article_id: rand(1..10), user_id: rand(1..10))
end
p '15 commentaires crees'

# On cree enfin des likes, associes a un article et un user, un user like un article quoi.
15.times do |_i|
  Like.create(article: Article.find(rand(1..10)), user: User.find(rand(1..10)))
end
p '15 like created'

# Pour randomiser, 3 techniques : .all.sample  class: Class.find(rand(1..10))  class_id: rand(1..10)
