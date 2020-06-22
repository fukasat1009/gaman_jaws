class RenameStratTimeColumnToTargets < ActiveRecord::Migration[5.2]
  def change
  	rename_column :targets, :strat_time, :start_time
  end
end
