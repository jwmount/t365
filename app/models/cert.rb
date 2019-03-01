class Cert < ApplicationRecord
  belongs_to :require, polymorphic: true
end
