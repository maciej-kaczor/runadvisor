require 'rails_helper'

RSpec.describe Address, type: :model do
  before(:each) { @address = Address.new(country: "USA", city: 'Los Angeles', street: 'Example Street 13') }

  subject { @address }

  it "#city returns a string" do
    expect(@address.city).to match 'Los Angeles'
  end
  
  it "#country returns a string" do
    expect(@address.country).to match 'USA'
  end
  it "#street returns a string" do
    expect(@address.street).to match 'Example Street 13'
  end
end
