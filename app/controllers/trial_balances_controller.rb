class TrialBalancesController < ApplicationController
  def new
    @trial_balance = Trial_Balance.new
  end

  def create

  end

  private

  def trial_balance_params
    
  end
end
