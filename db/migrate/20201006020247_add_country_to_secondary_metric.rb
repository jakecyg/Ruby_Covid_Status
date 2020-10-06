class AddCountryToSecondaryMetric < ActiveRecord::Migration[6.0]
  def change
    add_reference :secondary_metrics, :country, null: false, foreign_key: true
  end
end
