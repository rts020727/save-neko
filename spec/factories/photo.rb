FactoryBot.define do
  factory :photo do
    title { Faker::Lorem.characters(number:10) }
    content { Faker::Lorem.characters(number:30) }
    shop_id { '1' }
  end
end