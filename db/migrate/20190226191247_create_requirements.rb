class CreateRequirements < ActiveRecord::Migration[5.2]
  def change
    create_table :requirements do |t|
      t.references :require, polymorphic: true
      t.integer :certificate_id
      t.boolean :for_person
      t.boolean :for_company
      t.boolean :for_location
      t.boolean :preference
      t.string :description

      t.timestamps
    end
  end
end
