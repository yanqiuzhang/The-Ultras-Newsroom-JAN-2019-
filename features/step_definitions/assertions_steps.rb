Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("I should see the {string} page") do |page|
    expect(page).to have_content page 
end