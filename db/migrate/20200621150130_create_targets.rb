class CreateTargets < ActiveRecord::Migration[5.2]
  def change
    create_table :targets do |t|
    t.string :title, null: false
    t.string :price, null: false
    t.datetime :strat_time
    t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
