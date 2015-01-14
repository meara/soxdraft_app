class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :game_time
      t.string :home
      t.string :away
      t.string :up
      t.string :down

      t.belongs_to :series
      t.belongs_to :season

      t.timestamps
    end
  end
end
