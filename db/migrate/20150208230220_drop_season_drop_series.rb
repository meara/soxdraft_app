require_relative '20150115015755_create_series'
require_relative '20150115025326_create_seasons'
require_relative '20150115035407_add_season_i_dto_series'
require_relative '20150118232316_add_teams_to_series'


class DropSeasonDropSeries < ActiveRecord::Migration
  def change
    revert AddTeamsToSeries
    revert AddSeasonIDtoSeries
    revert CreateSeasons
    revert CreateSeries
  end
end
