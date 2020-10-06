class SecondaryMetric < ApplicationRecord
  validates :deathPerHudred, :recoveredPerHundred, :deathPerHundredRecovered, presence: true
  validates :deathPerHudred, :recoveredPerHundred, :deathPerHundredRecovered, numericality: true
  has_one :country
end
