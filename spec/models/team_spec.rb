require 'rails_helper'

RSpec.describe Team, :type => :model do
  
  let(:the_best_team) { Team.new(city: 'Chicago', name: 'White Sox', symbol: :chi, league: :al) }

  it 'has a readable city' do
    expect(the_best_team.city).to eq 'Chicago'
  end
  
  it 'has a readable name' do
    expect(the_best_team.name).to eq 'White Sox'
  end
  
  it 'has a readable symbol' do
    expect(the_best_team.symbol).to eq :chi
  end

  it 'has a readable league' do
    expect(the_best_team.league).to eq :al
  end

end