class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :corporations, :trial_balances do |t|
      # t.index [:_id, :_id]
      # t.index [:_id, :_id]
    end
  end
end
