Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("I should not see {string}") do |content|
    expect(page).to have_no_content content
end  

Then("I should be on the landing page") do
    expect(current_path).to eq root_path
end

Then("my role should be changed to {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
