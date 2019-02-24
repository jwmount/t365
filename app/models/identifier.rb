class Identifier < ApplicationRecord
  belongs_to :company, polymorphic: true
  belongs_to :person, polymorphic: true
end
