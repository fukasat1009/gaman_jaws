class CreatePatiences < ActiveRecord::Migration[5.2]
  def change
    create_table :patiences do |t|

      t.string      :name, null: false
      t.string      :price
      t.references  :target, null: false, foreign_key: true

      t.timestamps
    end
  end
end
