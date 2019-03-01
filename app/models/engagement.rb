class Engagement < ApplicationRecord

#
# A S S O C I A T I O N S   A S S O C I A T I O N S   A S S O C I A T I O N S   A S S O C I A T I O N S  
#
  belongs_to :person
  belongs_to :schedule
  has_many   :dockets
  
  # audited, not on Rails 4 yet

  # Scope syntax introduced in Rails 4.0.0
  # scope is 'within some date'
  # scope :published, -> { where('published_on <= ?', Time.now.to_date) }

  # C A L L B A C K S     C A L L B A C K S     C A L L B A C K S     C A L L B A C K S     
  after_initialize :set_defaults
  after_initialize :has_equipment_required?

  # Best practice in Rails is set defaults here and not in database
  # docket_id may default to nil since at engagement time no docket(s) will exist normally.
  # At this time, all default values are set in the DB.  See schema.rb.
  def set_defaults
    unless persisted?
    end
  end



end
