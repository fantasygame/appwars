require 'rails_helper'

RSpec.describe Review, type: :model do
  it { is_expected.to validate_presence_of(:war) }
  it { is_expected.to validate_presence_of(:user) }
end
