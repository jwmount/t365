class CreateIdentifiers < ActiveRecord::Migration[5.2]
  def change
    create_table :identifiers do |t|
      t.references :company, polymorphic: true
      t.references :person, polymorphic: true
      t.string :name{30}
      t.string :value{30}
      t.integer :rank, limit: 3

      t.timestamps
    end
  end
end
