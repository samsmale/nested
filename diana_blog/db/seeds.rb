# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Author.create({name:'Sam Smale', email:'sam@sam.com'})

Post.create({title: "First Post", content: "This is great", image_url: "", author_id: 1})
Post.create({title: "Second Post", content: "This is great", image_url: "", author_id: 1})
