class CreateSolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :solutions do |t|
      t.boolean :approved
      t.boolean :client_approved
      t.integer :drive_time_from_load_to_tip
      t.integer :drive_time_into_site
      t.integer :drive_time_into_tip
      t.integer :drive_time_out_of_site
      t.integer :drive_time_out_of_tip_site
      t.integer :drive_time_tip_to_load
      t.string  :equipment_name
      t.decimal :equipment_dollars_per_day, precision: 7, scale: 2
      t.integer :equipment_units_required_per_day
      t.decimal :hourly_hire_rate, precision: 7, scale: 2
      t.decimal :invoice_load_client, precision: 7, scale: 2
      t.decimal :invoice_tip_client, precision: 7, scale: 2
      t.integer :kms_one_way
      t.integer :load_time
      t.integer :loads_per_day
      t.integer :material_id
      t.string  :name
      t.decimal :pay_equipment_per_unit, precision: 7, scale: 2
      t.decimal :pay_load_client, precision: 7, scale: 2
      t.decimal :pay_tip_client, precision: 7, scale: 2
      t.decimal :pay_tip, precision: 7, scale: 2
      t.decimal :pay_tolls, precision: 7, scale: 2
      t.boolean :purchase_order_required
      t.integer :quote_id
      t.string  :solution_type
      t.boolean :semis_permitted
      t.integer :total_material
      t.string  :unit_of_material
      t.integer :unload_time

      t.timestamps
    end
  end
end
