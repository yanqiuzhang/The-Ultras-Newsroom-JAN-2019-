require 'rails_helper'

describe "Get /api/articles" do
#   let (:category){create(:category)}
  let!(articles){ 5.times {FactoryBot.create(:article)}}
  let(:headers){ {HTTP_ACCEPT: “application/json”} }
   
   It “returns a collection of 5 articles” do
      git ‘/api/articles’
    
       expect(JSON.parse(response.body).count).to eq 5
    end
end