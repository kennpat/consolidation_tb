class CreateCorporations < ActiveRecord::Migration
  def change
    create_table :corporations do |t|
      t.string :corporation_name, null: false
      t.integer :parent_id
      t.timestamp
    end
    add_index :corporations, :corporation_name
  end
end
