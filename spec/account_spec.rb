require 'account'
require 'deposit'

describe Account do

  context 'on creation' do
    it 'has a balance that returns 0' do
      expect(subject.balance).to eq(0)
    end

    it 'returns an empty transaction history' do
      expect(subject.transaction_history).to eq([])
    end     
  end
  
  describe '#execute_command' do
    context 'when a deposit is made' do
       amount_to_deposit = 10

      it 'updates the transaction history and returns the new balance' do
        deposit = object_double(
                  Deposit.new(amount_to_deposit), 
                  :execute => (subject.balance + amount_to_deposit)
                  )
        subject.execute_command(deposit)

        expect(subject.transaction_history.length).to eq(1)
        expect(subject.balance).to eq(10)
      end 

    end 
  end 

end