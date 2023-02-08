FactoryBot.define do
  factory :shop do
    name { Faker::Lorem.characters(number: 10) }
    email { Faker::Internet.email }
    password { 'password' }
    password_confirmation { 'password' }
    address { '東京駅' }
    phone_number { '000-000' }
    opening { '十四時' }
    closed { 'なし' }
  end
end
