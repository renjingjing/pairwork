# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
["Ruby", "Html", "Css", "Javascript"].each do |name|
  Kind.create(name: name)
end

50.times do
  title = Faker::Company.catch_phrase
  work  = "#{Faker::Company.bs} #{Faker::Company.bs} #{Faker::Company.bs}"
  kind_id=Random.rand(1..4).to_i
  Snippet.create({title: title, work: work,kind_id:kind_id})
end
