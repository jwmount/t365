class Schedule < ApplicationRecord

#
# A S S O C I A T I O N S   A S S O C I A T I O N S   A S S O C I A T I O N S   A S S O C I A T I O N S  
#
  belongs_to :job
  has_many :engagements, :dependent => :destroy
  has_many :reservations, :dependent => :destroy
  has_and_belongs_to_many :people

end
