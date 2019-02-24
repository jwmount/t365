class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table "addresses", force: true do |t|
      t.integer  "addressable_id",              null: false
      t.string   "addressable_type"      
      t.references :company, polymorphic: true
      t.references :person, polymorphic: true
      t.string   "street_address",             default: "",                    null: false
      t.string   "city",                       default: "",                    null: false
      t.string   "state",            limit: 2, default: "",                    null: false
      t.string   "post_code",                  default: "",                    null: false
      t.string   "map_reference",              default: "",                    null: false
      t.float    "latitude"
      t.float    "longitude"
      t.datetime "created_at",                 default: '2013-10-08 00:00:00', null: false
      t.datetime "updated_at",                 default: '2013-10-08 00:00:00', null: false
    end
  end
end
