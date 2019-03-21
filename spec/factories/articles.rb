FactoryBot.define do
  factory :article do
    title   { "MyString" }
    lead    { "MyText" }
    content { "MyText" }
    premium { "boolean" }
  end
end