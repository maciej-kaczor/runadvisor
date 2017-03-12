require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) { @user = User.new(email: 'user@example.com', username: 'testUser') }

  subject { @user }

  it { should respond_to(:email) }

  it "#email returns a string" do
    expect(@user.email).to match 'user@example.com'
  end
  
  it "#username returns a string" do
    expect(@user.username).to match 'testUser'
  end
end
