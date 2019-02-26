class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.datetime :day
      t.integer :job_id
      t.integer :equipment_units_today

      t.timestamps
    end
  end
end
