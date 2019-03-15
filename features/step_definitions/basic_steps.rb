When("I visit the site") do
    visit root_path
end

Given("the following articles exist") do |table|
    table.hashes.each do |article|
        create(:article, article)
    end
end

#     category = Category.find_by(category: article[:category])
#     article.except!('category_id')
#         create(:article, article.merge(category: category)) 
# end

Given("the following categories exist") do |table|
    table.hashes.each do |category|
        create(:category, category)
    end
end

