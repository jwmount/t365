class Solution < ApplicationRecord


  # A S S O C I A T I O N S     A S S O C I A T I O N S     A S S O C I A T I O N S     A S S O C I A T I O N S     
  belongs_to :quote
  belongs_to :material
  belongs_to :vendor, 
             :class_name => 'Company', 
             :foreign_key => :vendor_id
  has_many   :jobs, 
             :dependent => :destroy
  has_and_belongs_to_many :tips
  
  #
  # P O L Y M O R P H I C  A S S O C I A T I O N S
  #
  has_one :address,       
          :as => :addressable, 
          :autosave => true, 
          :dependent => :destroy
  has_many :requirements, 
           :as => :requireable, 
           :autosave => true, 
           :dependent => :destroy
  # NESTED -- Polys are managed from the parent           
    accepts_nested_attributes_for :address
    accepts_nested_attributes_for :requirements

  #
  # V A L I D A T I O N S
  #

  validates_presence_of :name, :equipment_name

end
