FactoryBot.define do
  factory :user do
    nick_name { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { Faker::Lorem.characters(number: 6, min_alpha: 1, min_numeric: 1) }
    password_confirmation { password }
    first_name            { '陸太郎' }
    last_name             { '山田' }
    first_name_kana       { 'リクタロウ' }
    last_name_kana        { 'ヤマダ' }
    birth_date            { '2021-01-01' }
  end
end
