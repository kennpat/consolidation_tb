class CreateTrialBalances < ActiveRecord::Migration
  def change
    create_table :trial_balances do |t|
      t.string :period, null: false
      t.integer :year, null: false
      t.integer :cash, null: false, default: 0
      t.integer :investments, null: false, default: 0
      t.integer :accounts_receivable, null: false, default: 0
      t.integer :inventory, null: false, default: 0
      t.integer :prepaid_expenses, null: false, default: 0
      t.integer :capital_assets, null: false, default: 0
      t.integer :accumulated_depreciation, null: false, default: 0
      t.integer :intangible_assets, null: false, default: 0
      t.integer :accumulated_amortization, null: false, default: 0
      t.integer :other_assets, null: false, default: 0
      t.integer :accounts_payable, null: false, default: 0
      t.integer :accrued_expenses, null: false, default: 0
      t.integer :long_term_liabilities, null: false, default: 0
      t.integer :other_liabilities, null: false, default: 0
      t.integer :retained_earnings, null: false, default: 0
      t.integer :capital_stock, null: false, default: 0
      t.integer :revenue, null: false, default: 0
      t.integer :cost_of_goods_sold, null: false, default: 0
      t.integer :selling_general_and_administrative_expense, null: false, default: 0
      t.integer :other_income, null: false, default: 0
      t.integer :other_expense, null: false, default: 0
      t.timestamps
    end
  end
end
