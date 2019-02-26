class Job < ApplicationRecord

#
# A S S O C I A T I O N
#

  belongs_to :solution

  has_many :dockets
  has_many :schedules, :dependent => :destroy

end
