class Region < ApplicationRecord
  validates :name, presence: true

  # where did this variable come from?
  has_many :countries
end
