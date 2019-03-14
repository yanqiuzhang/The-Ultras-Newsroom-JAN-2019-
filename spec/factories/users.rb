FactoryBot.define do
  factory :user do
    email { 'string' }
    password { 'string' }
    role { 'string' }
  end
end
