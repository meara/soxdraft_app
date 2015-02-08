class Team < ActiveRecord::Base
  has_many :home_games, class_name: 'Game', foreign_key: :home_team_id
  has_many :away_games, class_name: 'Game', foreign_key: :away_team_id
  has_many :home_series, class_name: 'Series', foreign_key: :home_team_id
  has_many :away_series, class_name: 'Series', foreign_key: :away_team_id
end