class Corporation < ActiveRecord::Base
  validates :corporation_name, presence: true
  has_many :trial_balances, through: :corporations_trial_balances
end
