FactoryBot.define do
  factory :user do
    email { 'jocke@craft.se' }
    password { 'string' }
    role { 'subscriber' }
  end
end
