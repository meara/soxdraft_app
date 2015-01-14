# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AL = {
  bal: ["Baltimore", "Orioles"],
  nyy: ["New York", "Yankees"],
  tor: ["Toronto", "Blue Jays"],
  tb: ["Tampa Bay", "Rays"],
  bos: ["Boston", "Red Sox"],
  det: ["Detroit", "Tigers"],
  cle: ["Cleveland", "Indians"],
  kc: ["Kansas City", "Royals"],
  chi: ["Chicago", "White Sox"],
  min: ["Minneapolis", "Twins"],
  oak: ["Oakland", "Athletics"],
  laa: ["Los Angeles", "Angels"],
  sea: ["Seattle", "Mariners"],
  hou: ["Houston", "Astros"],
  tex: ["Texas", "Rangers"]
}

NL = {
  atl: ["Atlanta", "Braves"],
  wsh: ["Washington", "Nationals"],
  nym: ["New York", "Mets"],
  mia: ["Miami", "Marlins"],
  phi: ["Philadelphia", "Phillies"],
  mil: ["Milwaukee", "Brewers"],
  stl: ["St. Louis", "Cardinals"],
  cin: ["Cincinatti", "Reds"],
  pit: ["Pittsburgh", "Pirates"],
  chc: ["Chicago", "Cubs"],
  sf: ["San Francisco", "Giants"],
  lad: ["Los Angeles", "Dodgers"],
  sd: ["San Diego", "Padres"],
  ari: ["Arizona", "Diamondbacks"],
  col: ["Colorado", "Rockies"]
}

AL.each do |sym, city_name|
  Team.create(city: city_name[0], name: city_name[1], symbol: sym, league: :al)
end

NL.each do |sym, city_name|
  Team.create(city: city_name[0], name: city_name[1], symbol: sym, league: :nl)
end