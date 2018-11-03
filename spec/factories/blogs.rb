FactoryBot.define do
  factory :blog do
    author { Faker::Name.name }
    feed_url { Faker::Internet.url }
  end
end
