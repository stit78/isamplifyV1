class Right < ApplicationRecord
  has_many :users

  validates :status, presence: true, inclusion: { in: ["Admin", "Quality", "Trader", "Exporter", "Client"] }
end
