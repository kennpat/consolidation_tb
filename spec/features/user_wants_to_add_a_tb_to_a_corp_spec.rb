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
    @corporation = FactoryGirl.create(:corporation)

  end

  scenario 'User adds a trial balance to a corporation' do
    visit corporation_path(@corporation.id)
    click_on 'Add new financial period activity'
    fill_in 'Year', with: 2015
    fill_in 'Period', with: 'year end'
    fill_in 'Cash', with: 100000
    fill_in 'Investments', with: 0
    fill_in 'Accounts Receivable', with: 450000
    fill_in 'Inventory', with: 1200000
    fill_in 'Prepaid Expenses', with: 50000
    fill_in 'Capital Assets', with: 1500000
    fill_in 'Accumulated Depreciation', with: -1000000
    fill_in 'Other Assets', with: 250000
    fill_in 'Accounts Payable', with: -200000
    fill_in 'Accrued Expenses', with: -350000
    fill_in 'Long-term Liabilities', with: -450000
    fill_in 'Other Liabilities', with: -100000
    fill_in 'Retained Earnings', with: -1000000
    fill_in 'Capital Stock', with: -400000
    fill_in 'Revenue', with: -1100000
    fill_in 'Cost of Goods Sold', with: 700000
    fill_in 'Selling, General, & Administrative Expenses', with: 300000
    #note that the total of the entered amounts should be zero
    click_on 'Submit'
    expect(page).to have_content('New Trial Balance created successfully')

  end

  scenario 'User incorrectly adds a trial balance to a corporation' do

  end
end
