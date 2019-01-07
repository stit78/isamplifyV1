class Provenance < ApplicationRecord
  has_many :company_names
  has_many :samples
  has_many :nested_elements

  COUNTRIES = ["Brazil", "Argentina", "Perou", "Chile", "Ecuador", "Paraguay", "Uruguay", "Colombia", "Venezuela", "Bolivia", "Suriname", "Guyana"]
  PREFIXES = ["Br", "Ar", "Pe", "Ch", "Ec", "Pa", "Ur", "Co", "Ve", "Bo", "Su", "Gu"]

  validates :name, presence: true, inclusion: COUNTRIES
  validates :prefixe, presence: true, inclusion: PREFIXES
end
