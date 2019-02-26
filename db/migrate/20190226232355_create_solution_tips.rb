class CreateSolutionTips < ActiveRecord::Migration[5.2]
  def change
    create_table :solution_tips do |t|
      t.integer :solution_id
      t.integer :tip_id

      t.timestamps
    end
  end
end
