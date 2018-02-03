require 'rspec'

class NullClass
  def method_missing(name, *args, &block)
    self
  end

  def respond_to_missing?(name, include_private = false)
    name.to_s || super
  end
end

# p null = NullClass.new
# p null.any_method
# p null.respond_to? :some_method


describe 'Null class' do
  before do
    @null = NullClass.new
  end

  it 'Returns NullClass object for standard method calls even when not defined' do
    expect(@null.something).to eq(@null)
  end

  it 'Returns true when asked if it responds to non existent methods' do
    expect(@null.respond_to? :something).to eq(true)
  end

  it 'Returns NullClass for for method calls with arguments, even when not defined' do
    expect(@null.anything('hey')).to eq(@null)
  end


  it 'Returns NullClass for for method calls with a block, even when not defined' do
    expect(@null.anything { 2 * 2 }).to eq(@null)
  end
end
