require 'rspec'  # => true

headers = [
  '1B',      # => "1B"
  '2B',      # => "2B"
  '3B',      # => "3B"
  'SS',      # => "SS"
  'C',       # => "C"
  'P',       # => "P"
  'LF',      # => "LF"
  'CF',      # => "CF"
  'RF'       # => "RF"
]            # => ["1B", "2B", "3B", "SS", "C", "P", "LF", "CF", "RF"]

astros = [
  'Gurriel',   # => "Gurriel"
  'Altuve',    # => "Altuve"
  'Bregman',   # => "Bregman"
  'Correa',    # => "Correa"
  'Gattis',    # => "Gattis"
  'Keuchel',   # => "Keuchel"
  'Beltran',   # => "Beltran"
  'Springer',  # => "Springer"
  'Reddick'    # => "Reddick"
]              # => ["Gurriel", "Altuve", "Bregman", "Correa", "Gattis", "Keuchel", "Beltran", "Springer", "Reddick"]

rangers = [
  'Fielder',  # => "Fielder"
  'Andrus',   # => "Andrus"
  'Odor',     # => "Odor"
  'Beltre',   # => "Beltre"
  'Lucroy',   # => "Lucroy"
  'Darvish',  # => "Darvish"
  'Gomez',    # => "Gomez"
  'Choo',     # => "Choo"
  'Mazara'    # => "Mazara"
]             # => ["Fielder", "Andrus", "Odor", "Beltre", "Lucroy", "Darvish", "Gomez", "Choo", "Mazara"]


def position_filter(headers, *data)
	headers.zip(*data)                  # => [["1B", "Gurriel", "Fielder"], ["2B", "Altuve", "Andrus"], ["3B", "Bregman", "Odor"], ["SS", "Correa", "Beltre"], ["C", "Gattis", "Lucroy"], ["P", "Keuchel", "Darvish"], ["LF", "Beltran", "Gomez"], ["CF", "Springer", "Choo"], ["RF", "Reddick", "Mazara"]]
end                                  # => :position_filter

position_filter(headers, astros, rangers)  # => [["1B", "Gurriel", "Fielder"], ["2B", "Altuve", "Andrus"], ["3B", "Bregman", "Odor"], ["SS", "Correa", "Beltre"], ["C", "Gattis", "Lucroy"], ["P", "Keuchel", "Darvish"], ["LF", "Beltran", "Gomez"], ["CF", "Springer", "Choo"], ["RF", "Reddick", "Mazara"]]

describe 'Position Filter' do
  it 'lines up players with their positions' do
    test_headers = ['1B', '2B', 'P']
    test_team = ['First Base Player', 'Second Base Player', 'Pitcher']
    expect(position_filter(test_headers, test_team).first).to eq(['1B', 'First Base Player'])
  end                                                                                          # => #<RSpec::Core::Example "lines up players with their positions">
end                                                                                            # => RSpec::ExampleGroups::PositionFilter
