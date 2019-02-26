class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.string :name
      t.integer :company_id
      t.decimal :fee
      t.string :fire_ant_risk_level

      t.timestamps
    end
  end
end
