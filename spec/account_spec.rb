require 'account'

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

    it 'takes a command as an argument' do
      deposit = instance_double("Deposit", :amount_to_deposit => 10)
      expect { subject.execute_command(deposit)}.to_not raise_error
    end
  end 

end