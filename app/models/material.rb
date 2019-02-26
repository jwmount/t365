class Material < ApplicationRecord

#
# A S S O C I A T I O N S
#
  has_many :requirements, :dependent => :destroy
  has_many :certificates, :through => :requirements
  has_many :solutions, :dependent => :destroy



end
