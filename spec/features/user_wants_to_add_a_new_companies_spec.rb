require 'rails_helper'

feature 'User adds a new corp structure', %Q{
  As a signed up user
  I want to add a new corporation
  So that I can visualize how the company is structured
} do

  before :each do
    user = FactoryGirl.create(:user)
    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Log in'
    # login_as(user)
  end

  # This test will create the initial company entry within the database
  # subsequent tests will add subsidiaries to the structure.
  scenario 'User adds a company to their portfolio' do
    visit root_path
    click_on 'View Corporations'
    click_on 'Add New Corporation'
    fill_in 'Corporation Name', with: 'Test Parent Company'
    check 'Is this a Parent Company?'
    click_on 'Add New Corporation'
    expect(page).to have_content('New Corporation created successfully')
  end

  # scenario 'User tries to add company without the proper information' do
  #   visit new_corporation_path
  #   click_on 'Add New Corporation'
  #   expect(page).to have_content ("Corporation name can't be blank")
  # end
  #
  # scenario 'User wants to add a subsidiary to a parent company' do
  #   #Create the parent company
  #   visit new_corporation_path
  #   fill_in 'Corporation Name', with: 'Test Parent Company'
  #   check 'Is this a Parent Company'
  #   click_on 'Add New Corporation'
  #   #Create the subsidiary to attach to the parent company
  #   visit new_corporation_path
  #   fill_in 'Corporation Name', with: 'Test Subsidiary Company'
  #   check 'Test Parent Company'
  #   click_on 'Add New Corporation'
  #   expect(page).to have_content('New Corporation created successfully')
  #
  # end
end
