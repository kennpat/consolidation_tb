require 'rails_helper'

feature 'User edits a corp', %Q{
  As a signed up user
  I want to edit a corporation
  So that I can change the name and parent as necessary
} do

  before :each do
    user = FactoryGirl.create(:user)
    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Log in'
    # login_as(user)
  end

  scenario 'User edits a company name' do
    corporation = FactoryGirl.create(:corporation)
    visit corporation_path(corporation)
    click_on 'Edit Corporation'
    fill_in 'Corporation Name', with: 'Renamed Test Corporation'
    click_on 'Update Corporation'
    expect(page).to have_content('Corporation updated successfully')
    expect(page).to have_content('Renamed Test Corporation')
  end

end
