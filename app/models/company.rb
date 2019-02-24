class Company < ApplicationRecord


  has_many :people, 
           :dependent => :destroy
  has_many :equipment, 
           :dependent => :destroy
  has_many :projects, 
           :dependent => :destroy
  has_many :reservations
  
# polymorphs
  has_many  :addresses, 
            :as        => :addressable, 
            :autosave  => true, 
            :dependent => :destroy
end
