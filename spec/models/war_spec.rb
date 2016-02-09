require 'rails_helper'

RSpec.describe War, type: :model do
  it { is_expected.to have_one(:review) }
  it { is_expected.to have_many(:competitions) }
  it { is_expected.to have_many(:users) }
  it { is_expected.to validate_presence_of(:review) }
end
