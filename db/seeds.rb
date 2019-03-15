# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.create!([
  { article_id: 1, title: "Do Airpods cause cancer?", lead: "Them shits is bad, mkay", content: "Bloobidyblaah", category_name: "Tech" },
  { article_id: 2, title: "Drink red wine at once!", lead: "Health professionals insist that wine is good", content: "Bloobidyblaah", category_name: "Health" },
  { article_id: 3, title: "Beto bitches are back!", lead: "Beto O'Rourke is running for president", content: "Bloobidyblaah", category_name: "Politics" },
  { article_id: 4, title: "AT&T ComCast merger a done deal", lead: "Comcast is taking over", content: "Bloobidyblaah", category_name: "Business" },
  { article_id: 5, title: "Hammarby Victorious!", lead: "Best team ever has won the cup!", content: "Bloobidyblaah", category_name: "Sport" },
  
])
