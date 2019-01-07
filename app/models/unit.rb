class Unit < ApplicationRecord
  has_many :elements
  has_many :nested_elements

  validates :name, presence: true, inclusion: { in: ["No unit", "Quantity", "Weight - kg", "Temperature - °C", "Length - cm"] }
end
