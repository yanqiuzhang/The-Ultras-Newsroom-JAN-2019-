FactoryBot.define do
  factory :article do
    title   { "MyString" }
    lead    { "MyText" }
    content { "MyText" }
    user
    approved { "Boolean" }
  end
end