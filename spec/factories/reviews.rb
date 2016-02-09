FactoryGirl.define do
  factory :review do
    war factory: :war
    user factory: :user
  end
end
