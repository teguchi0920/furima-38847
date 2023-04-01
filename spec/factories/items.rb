FactoryBot.define do
  factory :item do
    item_name { Faker::Lorem.sentence[0..40] }
    item_info { Faker::Lorem.sentence[0..1000] }
    item_category_id { Faker::Number.between(from: 2, to: 11)}
    item_condition_id { Faker::Number.between(from: 2, to: 7)}
    shipping_fee_id { Faker::Number.between(from: 2, to: 3)}
    prefecture_id { Faker::Number.between(from: 2, to: 48)}
    days_to_ship_id { Faker::Number.between(from: 2, to: 4)}
    item_price { Faker::Number.between(from: 300, to: 9999999)}
    association :user

    after(:build) do |item|
      item.item_image.attach(io: File.open('public/images/test_image2.png'), filename: 'test_image2.png')
    end
  end
end
