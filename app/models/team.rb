class Team < ActiveRecord::Base

  attr_reader :city, :name, :symbol, :league

  def initialize(city, name, symbol, league)
    @city = city
    @name = name
    @symbol = symbol
    @league = league
  end

end