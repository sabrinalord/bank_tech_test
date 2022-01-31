require 'deposit'

describe Deposit do

  it 'has a value to deposit' do
    expect(Deposit.new(10).amount_to_deposit).to eq(10)
  end 

  it 'is instantiated with a transaction date' do
    allow(Date).to receive(:today).and_return Date.new(2023,01,14)
    expect(Deposit.new(10).transaction_date).to eq(Date.today)
  end 

  describe '#execute' do
    it 'returns the new account balance' do
      account = instance_double("Account", :balance => 5)
      deposit = Deposit.new(10)
      expect(deposit.execute(account.balance)).to eq 15
      
    end 
  end
end 