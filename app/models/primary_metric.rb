class PrimaryMetric < ApplicationRecord
  # can these be merged into one?
  validates :confirmed, :deaths, :recovered, :active, presence: true
  validates :confirmed, :deaths, :recovered, :active, numericality: true
  has_one :country
end
