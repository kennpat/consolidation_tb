require 'rails_helper'

feature 'User adds a new corp structure', %Q{
  As a signed up user
  I want to add a the financial results of a time period to a corporation
  So that I can calculate financial ratios and estimate taxes
} do
  before :each do
    user = FactoryGirl.create(:user)
    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Log in'
    # login_as(user)
  end

  scenario 'User adds a trial balance to a corporation' do

  end
end
