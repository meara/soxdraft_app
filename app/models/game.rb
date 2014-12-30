class Game < ActiveRecord::Base
  attr_reader :series_id

  def initialize(date, time, away, series_id)
    @date = date
    @time = time
    @home = :chi
    @away = away
    @series_id = series_id
    @season_id = nil
    @up = nil
    @down = nil
  end

  def day_game?
    return true if @time < 1700
    false
  end

  def night_game?
    return false if @time < 1700
    true
  end

  def same_series?(game)
    return true if @series_id == game.series_id
    false
  end

  def weekend?
    return true if @date.cwday > 5
    false
  end

  def weekday?
    return true if @date.cwday <= 5
    false
  end
end
