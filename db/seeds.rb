# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
category_1 = Category.create(name: "Lifestyle")
category_2 = Category.create(name: "Breaking News")
category_3 = Category.create(name: "Politics")
category_4 = Category.create(name: "Health")
category_5 = Category.create(name: "Sport")

article_1 = Article.create(title: "Voted best mead recipe", lead: "Restaurant wins prize", content: "Restaurant wins prize for best mead in Sweden")
article_2 = Article.create(title: "Ancient viking grave discovered", lead: "Kids came across sword", content: "Kids come across sword protruding from the earth")
article_3 = Article.create(title: "New Prime Minister", lead: "Today is a new day", content: "The country is on a better path")
article_4 = Article.create(title: "Drinking wine improves general health", lead: "Drink wine today!", content: "Studies show that wine is good for your heart")
article_5 = Article.create(title: "Hammarby! Hammarby!", lead: "Best team ever!", content: "Home is where the heart is")

article_1.categories << category_1
article_2.categories << category_2
article_3.categories << category_3
article_4.categories << category_4
article_5.categories << category_5






 