class Game < ActiveRecord::Base

  belongs_to :series
  belongs_to :season
  belongs_to :home_team, class_name: 'Team'
  belongs_to :away_team, class_name: 'Team'

  def day_game?
    return true if game_time.strftime("%H%M").to_i < 1700
    false
  end

  def night_game?
    return true if game_time.strftime("%H%M").to_i > 1700
    false
  end

  def same_series?(game)
    return true if series_id == game.series_id
    false
  end

  def same_team?(game)
    return true if away_team_id == game.away_team_id
    false
  end

  def weekend?
    return true if game_time.cwday > 5
    false
  end

  def weekday?
    return true if game_time.cwday <= 5
    false
  end

end
