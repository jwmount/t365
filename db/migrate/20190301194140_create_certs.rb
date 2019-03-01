class CreateCerts < ActiveRecord::Migration[5.2]
  def change
    create_table :certs do |t|
      t.references :require, polymorphic: true
      t.integer :certifiable_id
      t.datetime :expires_on
      t.string :serial_number
      t.boolean :permanent
      t.boolean :active

      t.timestamps
    end
  end
end
