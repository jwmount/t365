class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :company_id
      t.integer :rep_id
      t.datetime :project_start_on
      t.string :description
      t.boolean :active
      t.integer :intend_to_bid
      t.integer :submitted_bid

      t.timestamps
    end
  end
end
