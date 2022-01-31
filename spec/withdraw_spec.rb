require 'withdraw'

describe Withdraw do
  it 'has a value to withdraw' do
    expect(Withdraw.new(10).amount_to_withdraw).to eq(10)
  end 

  it 'is instantiated with a transaction date' do
    allow(Date).to receive(:today).and_return Date.new(2023,01,14)
    expect(Withdraw.new(10).transaction_date).to eq(Date.today)
  end 

  describe '#execute' do
    it 'returns the new account balance' do
      account = instance_double("Account", :balance => 10)
      withdraw = Withdraw.new(10)
      expect(withdraw.execute(account.balance)).to eq 0
      
    end 
  end
end 