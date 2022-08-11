FactoryBot.define do
  factory :event do
    pain_id { '2' }
    association :user
  end
end
