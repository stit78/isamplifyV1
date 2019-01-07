class CompanyName < ApplicationRecord
  belongs_to :provenance
  has_many :users
  has_many :elements

  validates :name, presence: true, uniqueness: true
  validates :supplier_number, uniqueness: true
end
