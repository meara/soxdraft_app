class AddTeamsToSeries < ActiveRecord::Migration
  def change
    add_column :series, :home_team_id, :integer
    add_column :series, :away_team_id, :integer
  end
end
