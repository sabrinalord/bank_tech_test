require 'deposit'

describe Deposit do

  context 'Once an account has been created' do
    describe '#execute' do
      it 'returns the new account balance' do
        account = instance_double("Account", :balance => 5)
        deposit = Deposit.new(10)
        expect(deposit.execute(account.balance)).to eq 15
       
      end 
    end
  end 

end 