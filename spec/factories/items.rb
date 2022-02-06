FactoryBot.define do
  factory :item do
    item_name { '名前' }
    item_description { '説明' }
    category_id { 2 }
    condition_id { 2 }
    delivery_fee_id { 2 }
    prefecture_id { 2 }
    delivery_time_id { 2 }
    item_price { 1000 }
    association :user

    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
