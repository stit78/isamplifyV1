class PotentialClient < ApplicationRecord
  belongs_to :sample
  belongs_to :client, class_name: 'User'
end
