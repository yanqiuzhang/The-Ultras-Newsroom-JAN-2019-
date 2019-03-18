FactoryBot.define do
  factory :user do
    email { 'jocke@craft.se' }
    password { 'string' }
    factory :visitor do
      role { 0 }
      email {'per@craft.se'}
    end
    factory :journalist do
      role { 1 }
      email {'per@craft.se'}
    end
  end
end
