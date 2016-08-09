require_relative 'coinchanger.rb'

describe CoinChanger do
  it '0p -> []' do
    expect(described_class.change(0)).to eq([])
  end

  it '1p -> [1]' do
    expect(described_class.change(1)).to eq([1])
  end

  it '2p -> [2]' do
    expect(described_class.change(2)).to eq([2])
  end

  it '5p -> [5]' do
    expect(described_class.change(5)).to eq([5])
  end

  it '3p -> [2p, 1p]' do
    expect(described_class.change(3)).to eq([2, 1])
  end

  it '6p -> [5p, 1p]' do
    expect(described_class.change(6)).to eq([5, 1])
  end

  it '11p -> [10p, 1p]' do
    expect(described_class.change(11)).to eq([10, 1])
  end

  it '7p -> [5p, 2p]' do
    expect(described_class.change(7)).to eq([5, 2])
  end

   it '12p -> [10p, 2p]' do
    expect(described_class.change(12)).to eq([10, 2])
  end

  it '22p -> [20p, 2p]' do
    expect(described_class.change(22)).to eq([20, 2])
  end

  it '15p -> [10p, 5p]' do
    expect(described_class.change(15)).to eq([10, 5])
  end

  it '25p -> [20p, 5p]' do
    expect(described_class.change(25)).to eq([20, 5])
  end

  it '55p -> [50p, 5p]' do
    expect(described_class.change(55)).to eq([50, 5])
  end




  # coins that already exist
  it '1p -> [1p]'
  it '2p -> [2p]'
  it '5p -> [5p]'
  it '10p -> [10p]'
  it '20p -> [20p]'
  it '50p -> [50p]'
  it '100p -> [100p]'
  it '200p -> [200p]'

  it '3p -> [2p, 1p]'
  it '6p -> [5p, 1p]'
  it '11p -> [10p, 1p]'

  it '7p -> [5p, 2p]'
  it '12p -> [10p, 2p]'
  it '22p -> [20p, 2p]'

  it '15p -> [10p, 5p]'
  it '25p -> [20p, 5p]'
  it '55p -> [50p, 5p]'


  it '4p -> [2p, 2p]'
  it '40p -> [20p, 20p]'
  it '400p -> [200p, 200p]'


  it '8p -> [5p, 2p, 1p]'
  it '17p -> [10p, 5p, 2p]'
  it '18p -> [10p, 5p, 2p, 1p]'

  it '9p -> [5p, 2p, 2p]'
  it '19-> [10p, 5p, 2p, 2p]'
  it '29-> [20p, 5p, 2p, 2p]'



  it '600p -> [200p, 200p, 200p]'
  it '800p -> [200p, 200p, 200p, 200p]'
  it '1000p -> [200p, 200p, 200p, 200p, 200p]'


end