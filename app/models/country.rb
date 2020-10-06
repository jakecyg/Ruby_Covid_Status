class Country < ApplicationRecord
  validates :name, presence: true
  has_one :primary_metrics
  has_one :secondary_metrics
end
