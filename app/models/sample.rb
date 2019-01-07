class Sample < ApplicationRecord
  belongs_to :provenance
  belongs_to :container
  has_many :potential_clients
  belongs_to :exporter, class_name: 'User'
  belongs_to :trader, class_name: 'User'
  has_many :samples_elements
  has_many :etiquettes

  STATUSES = ["pending reception", "testing", "labelling", "sending", "pending approval", "approved", "archived", "history"]

  validates :stage, presence: true, inclusion: { in: ["Offer Sample", "Loading Sample", "Port Sample", "Warehouse Sample"] }

  validates :status, presence: true, inclusion: STATUSES
  enum status: STATUSES
  scope :count_with_status, ->(status) { where(status: status).count }
end
