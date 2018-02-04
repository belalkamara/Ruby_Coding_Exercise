require 'rspec'
require 'date'

def day_counter
  Integer(Date.new(2016, 12, 25) - Date.new(2004, 07, 01))
end

## This is what I did, the profes wrapped the "Integer" call in the method
# p day_counter.to_i 

# p day_counter


describe 'Day counter' do
  it 'counts the days between Christmas in 2016 and July 1, 2004' do
    expect(day_counter).to eq(4560)
  end
end