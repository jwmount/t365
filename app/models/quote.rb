class Quote < ApplicationRecord

  belongs_to :project  
  has_many :solutions, :dependent => :destroy

end
