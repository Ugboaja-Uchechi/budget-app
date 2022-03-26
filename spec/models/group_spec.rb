require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @user1 = User.create! name: 'Rav', password: 'qwertyasdf', email: 'melodie@mail.com'
    @group = @user1.groups.create! name: 'Sleep', icon: 'icon'
  end

  it 'name should be present' do
    @group.name = 'Sleep'
    expect(@group.name).to eq('Sleep')
  end

  it 'icon should be present' do
    @group.icon = nil
    expect(@group).to_not be_valid
  end

  it 'subject should be valid' do
    expect(@group).to be_valid
  end
end
