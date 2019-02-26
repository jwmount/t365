class CreatePeopleSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :people_schedules do |t|
      t.integer :person_id
      t.integer :schedule_id

      t.timestamps
    end
  end
end
