class Equipment < ApplicationRecord

#
# A S S O C I A T I O N S
#
  belongs_to :company
  has_many :reservations, :dependent => :destroy
  
end
