describe User do
  subject { create(:user, name: 'Name') }

  it { is_expected.to respond_to(:name) }

  it "#name returns a string" do
    expect(subject.name).to match 'Name'
  end
end
