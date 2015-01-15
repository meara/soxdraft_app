class AddForeignKeysToGame < ActiveRecord::Migration
  change_table :games do |t|
    t.remove :home, :away
    t.belongs_to :home_team, name: :team
    t.belongs_to :away_team, name: :team
  end
end
