class CreateDockets < ActiveRecord::Migration[5.2]
  def change
    create_table :dockets do |t|
      t.integer :engagement_id
      t.integer :person_id
      t.string :number
      t.datetime :date_worked
      t.datetime :dated
      t.datetime :received_on
      t.boolean :operator_signed
      t.boolean :client_signed
      t.boolean :approved
      t.datetime :approved_on
      t.string :approved_by
      t.decimal :a_inv_pay, precision: 7, scale: 2
      t.decimal :b_inv_pay, precision: 7, scale: 2
      t.decimal :supplier_inv_pay, precision: 7, scale: 2

      t.timestamps
    end
  end
end
