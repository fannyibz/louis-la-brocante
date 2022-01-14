FactoryBot.define do
  factory :ad do
    name { Faker::Commerce.product_name }
    department { Faker::Commerce.department }
    description { Faker::TvShows::SiliconValley.motto }
    price { Faker::Commerce.price }
    user
  end
end