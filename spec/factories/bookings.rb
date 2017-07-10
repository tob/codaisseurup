FactoryGirl.define do
  factory :booking do
    event_id { build(:event)}
    price "9.99"
    guests "2"
  end
end
