class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.integer :project_id
      t.integer :quote_to_id
      t.integer :rep_id
      t.string :name{30}
      t.boolean :fire_ants
      t.string :fire_ants_verified_by
      t.text :inclusions
      t.datetime :expected_start
      t.integer :duration
      t.string :council

      t.timestamps
    end
  end
end
