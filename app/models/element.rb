class Element < ApplicationRecord
  belongs_to :company_name
  belongs_to :unit
  has_many :samples_elements
  has_many :nested_elements
end
