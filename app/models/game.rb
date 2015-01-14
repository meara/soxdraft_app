class Game < ActiveRecord::Base

  belongs_to :series

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

  def weekend?
    return true if game_time.cwday > 5
    false
  end

  def weekday?
    return true if game_time.cwday <= 5
    false
  end

end
