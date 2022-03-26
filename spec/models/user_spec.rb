require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user1 = User.create! name: 'Rav', password: '234567', email: 'rav@gmail.com'
  end

  it 'name should be present' do
    @user1.name = nil
    expect(@user1).to_not be_valid
  end

  it 'subject should be valid' do
    expect(@user1).to be_valid
  end
end
