class Team < ActiveRecord::Base
  has_many :home_games, class_name: :game, foreign_key: :home_team_id
  has_many :away_games, class_name: :game, foreign_key: :away_team_id
end