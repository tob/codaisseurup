FactoryGirl.define do
  factory :event do
    home_type         "House"
    event_type         "Shared"
    capacity       2
    price             { Faker::Commerce.price }
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
