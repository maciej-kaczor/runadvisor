require 'spec_helper'

describe "the signin process", :type => :feature do
  # before :each do
  #   User.new(email: 'user@example.com', password: 'password', username: 'testuser')
  # end

  it "signs me up" do
    visit '/users/sign_up'
    within(".form-inputs") do
      fill_in 'user_email', with: 'user@example.com'
      fill_in 'user_username', with: 'testuser'
      fill_in 'user_password', with: 'password'
      fill_in 'user_password_confirmation', with: 'password'

    end
    click_button 'Sign up'
    expect(page).to have_content 'Sign out'
  end
end