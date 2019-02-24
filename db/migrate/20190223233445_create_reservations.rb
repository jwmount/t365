class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :schedule_id
      t.integer :equipment_id
      t.integer :number_requested

      t.timestamps
    end
  end
end
