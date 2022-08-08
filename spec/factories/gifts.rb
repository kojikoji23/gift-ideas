FactoryBot.define do
  factory :gift do
    title { Faker::Lorem.sentence }
    content { Faker::Lorem.sentence }
    url { Faker::Internet.url }

    association :user

    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.jpg'), filename: 'test_image.jpg')
    end
  end
end