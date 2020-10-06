class SecondaryMetric < ApplicationRecord
  validates :deathPerHundred, :recoveredPerHundred, :deathPerHundredRecovered, presence: true
  validates :deathPerHundred, :recoveredPerHundred, :deathPerHundredRecovered, numericality: true

  belongs_to :country
end