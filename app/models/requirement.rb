class Requirement < ApplicationRecord

  
#
# A S S O C I A T I O N S
#

  belongs_to :certificate
#  belongs_to :requireable, :polymorphic => true  can this be  right?

end
