class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string  :name,               default: "",      null: false
      t.integer :credit_terms,       default: 30,      null: false
      t.boolean :PO_required,        default: false,   null: false
      t.boolean :active,             default: true,    null: false
      t.string  :bookkeeping_number, default: "00000", null: false
      t.string  :line_of_business,   default: "",      null: false
      t.string  :url,                default: "",      null: false
      t.boolean :license,            default: false,   null: false

      t.timestamps
    end
  end
end
