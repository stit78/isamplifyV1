class Container < ApplicationRecord
  has_many :samples
  belongs_to :client, class_name: 'User'

  validates :name, presence: true, uniqueness: true
end
