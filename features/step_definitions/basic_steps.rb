When("I visit the site") do
    visit root_path
end

Given("the following articles exist") do |table|
    table.hashes.each do |article|
        create(:article, article)
    end
end

When("I click on {string}") do |element|
    click_on element
end
  
When("I should see the article {string}") do |content|
    expect(page).to have_content content  
end


