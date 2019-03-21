Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("I should not see {string}") do |content|
    expect(page).to have_no_content content
end  

Then("I should be on the {string} page") do |page|
   case page
   when "landing"
    expected_page = root_path
   when "subscription"
    expected_page = subscription_path
   end

   expect(current_path).to eq expected_page
end

  