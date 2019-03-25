Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("I should not see {string}") do |content|
    expect(page).to have_no_content content
end 

Then("I should be on the landing page") do
    expect(current_path).to eq root_path
end

Then("{string} should have user role {string}") do |email, role|
    user = User.find_by(email: email)
    expect(user.role).to eq role
end
  
