When("I visit the site") do
    visit root_path
end

Given("the following articles exist") do |table|
    table.hashes.each do |article|
        create(:article, article)
    end
end

Given("the following categories exist") do |table|
    table.hashes.each do |category|
        create(:category, category)
    end
end

