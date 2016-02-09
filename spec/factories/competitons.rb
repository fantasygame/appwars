FactoryGirl.define do
  factory :competition do
    user factory: :user
    war factory: :war
  end
end
