class AddCountryToPrimaryMetric < ActiveRecord::Migration[6.0]
  def change
    add_reference :primary_metrics, :country, null: false, foreign_key: true
  end
end
