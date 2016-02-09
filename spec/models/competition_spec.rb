require 'rails_helper'

RSpec.describe Competition, type: :model do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:war) }

  it { is_expected.to validate_presence_of(:user) }
  it { is_expected.to validate_presence_of(:war) }
end
