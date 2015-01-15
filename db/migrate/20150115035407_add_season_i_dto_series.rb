class AddSeasonIDtoSeries < ActiveRecord::Migration
  change_table :series do |t|
    t.belongs_to :season
  end
end
