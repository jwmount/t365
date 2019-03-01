class CreateEngagements < ActiveRecord::Migration[5.2]
  def change
    create_table :engagements do |t|
      t.integer :schedule_id
      t.integer :person_id
      t.integer :docket_id
      t.string :docket_number
      t.boolean :onsite_now
      t.boolean :onsite_at
      t.boolean :breakdown
      t.boolean :no_show
      t.integer :OK_tomorrow
      t.boolean :engagement_declined

      t.timestamps
    end
  end
end
