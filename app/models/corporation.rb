class Corporation < ActiveRecord::Base
  validates :corporation_name, presence: true
end
