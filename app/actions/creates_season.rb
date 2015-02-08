require 'csv'

class CreatesSeason

  # this accessor exists solely for testing
  # season probably shouldn't be writable but necessary for janky stub thing
  attr_accessor :season

  def initialize(filename)
    @filename = filename
  end

  def create
    @season = Season.create(year: 2014)
    create_games
    assign_series
  end

  def datify(date, time)
    puts "#{date} #{time}"
    DateTime.strptime("#{date} #{time}","%Y-%m-%d %H%M")
  end

  def create_games
    CSV.foreach(@filename, headers: true, header_converters: :symbol) do |row|
      game_time = datify(row[:date],row[:time])
      home_team_id = Team.find_by_symbol(:chi).id
      away_team_id = Team.find_by_symbol(row[:away].to_sym).id
      raise "Invalid team: #{row[away]}" unless away_team_id

      @season.games.create(game_time: game_time, home_team_id: home_team_id, away_team_id: away_team_id)
    end
  end


  # def sort_by_date!
  #   @season.games.to_a.sort! { |a,b| a.game_time <=> b.game_time }
  # end

  def assign_series
    games = @season.games.to_a.sort { |a,b| a.game_time <=> b.game_time }
    games.each do |g|
      away = g.away_team_id
      puts g.away_team_id
    end
  end

  def belongs_to_series(game)
    team_series = Series.where(team_id: game.team_id)
  end
  
end