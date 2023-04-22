FactoryBot.define do
  Faker::Config.locale = :ja

  factory :order_address do
    post_code { Faker::Address.postcode }
    prefecture_id { Faker::Number.between(from: 2, to: 48) }
    city { Faker::Address.city }
    block { Faker::Address.street_name + Faker::Address.building_number }
    building { Faker::Address.street_name + 'ハイム' + Faker::Number.number(digits: 3).to_s }
    phone_number { Faker::Number.leading_zero_number(digits: rand(10..11)) }
    token { 'tok_' + Faker::Alphanumeric.alphanumeric(number: 28) }
  end
end
