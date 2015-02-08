class Series < ActiveRecord::Base
  has_many :games
  belongs_to :season
  belongs_to :home_team, class_name: 'Team'
  belongs_to :away_team, class_name: 'Team'
end
