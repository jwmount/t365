class CreateCertificates < ActiveRecord::Migration[5.2]
  def change
    create_table :certificates do |t|
      t.string :name
      t.string :description
      t.boolean :for_person
      t.boolean :for_company
      t.boolean :for_equipment
      t.boolean :for_location
      t.boolean :active

      t.timestamps
    end
  end
end
