FactoryBot.define do
  factory :weapon do
    name { FFaker::Name.first_name }
    description { FFaker::Lorem.paragraphs(paragraph_count = 1) }
    power_base { FFaker::Random.rand(10..100) }
    power_step { FFaker::Random.rand(1..10) }
    level { FFaker::Random.rand(1..99) }
  end
end
