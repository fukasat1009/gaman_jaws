class AddTargetStatusToTargets < ActiveRecord::Migration[5.2]
  def change
    add_column :targets, :target_status, :integer
  end
end
