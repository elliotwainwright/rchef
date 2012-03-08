require 'faker'
require 'populator'
require 'sha1'

User.destroy_all
Recipe.destroy_all

10.times do
  user = User.new
  user.username = Faker::Internet.user_name
  user.email = Faker::Internet.email
  user.password = "test"
  user.password_confirmation = "test"
  user.save
end

User.all.each do |user|
 Recipe.populate(5..10) do |recipe|
  recipe.title = Faker::Lorem.sentence
  recipe.method = Faker::Lorem.paragraphs
  recipe.user_id = user.id
 end
end