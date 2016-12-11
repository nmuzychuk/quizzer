FactoryGirl.define do
  factory :quiz do
    title Faker::Lorem.word
    description Faker::Lorem.sentence
    published true

    category
    user
  end
end
