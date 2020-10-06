class CreateSecondaryMetrics < ActiveRecord::Migration[6.0]
  def change
    create_table :secondary_metrics do |t|
      t.integer :deathPerHundred
      t.integer :recoveredPerHundred
      t.integer :deathPerHundredRecovered

      t.timestamps
    end
  end
end
