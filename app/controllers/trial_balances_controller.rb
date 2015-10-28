class TrialBalancesController < ApplicationController
  def new
    @trial_balance = Trial_Balance.new
    @corporation = Corporation.find_by(id: params['corporation_id'])
  end

  def create
    trial_balance = Trial_Balance.new(trial_balance_params)
    corporation = params['corporation_id']
    if trial_balance.save!
      redirect_to trial_balance_path(trial_balance.id), notice: 'New Trial Balance created successfully'
    else
      render :new
    end
  end

  def show
    @trial_balance = Trial_Balance.find_by(id: params['trial_balance_id'])
  end

  private

  def trial_balance_params
    params.require(:trial_balance).permit(:year, :period, :cash, :investments, :accounts_receivable, :inventory, :prepaid_expenses,
      :capital_assets, :accumulated_depreciation, :intangible_assets, :accumulated_amortization, :other_assets,
      :accounts_payable, :accrued_expenses, :long_term_liabilities, :other_liabilities,
      :retained_earnings, :capital_stock, :revenue, :cost_of_goods_sold, :selling_general_and_administrative_expense,
      :other_income, :other_expense)
  end
end
