class AddRankStatusToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :rank_status, :integer
  end
end
