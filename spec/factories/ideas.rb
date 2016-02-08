FactoryGirl.define do
  factory :idea do
    user factory: :user
    name "name"
    description "description"
    duration_in_seconds 3600
  end
end
