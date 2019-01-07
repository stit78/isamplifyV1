class NestedElement < ApplicationRecord
  belongs_to :element
  belongs_to :unit
  belongs_to :provenance
end
