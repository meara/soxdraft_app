class Team < ActiveRecord::Base
  def initialize(city, name, symbol)
    @city = city
    @name = name
    @symbol = symbol
  end
end
