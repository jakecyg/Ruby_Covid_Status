class AddRegionsToCountries < ActiveRecord::Migration[6.0]
  def change
    add_reference :countries, :region, null: false, foreign_key: true
  end
end
