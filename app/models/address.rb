class Address < ApplicationRecord
  belongs_to :company, polymorphic: true
end
