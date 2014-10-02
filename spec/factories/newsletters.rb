# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :newsletter do
    title { Faker::Lorem.sentence}
    body { Faker::Lorem.paragraph }
  end
end
