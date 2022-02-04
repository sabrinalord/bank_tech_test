# frozen_string_literal: true

require 'account'
require 'transaction'

describe Account do



  describe '#execute_command' do
    context 'when a new printStatement is passed into execute' do
      it 'outputs to stdout' do
        account = Account.new         

        expect do
          account.execute_command(PrintStatement.new)
        end.to output("date || credit || debit || balance\n").to_stdout
      end
    end

    context 'when a transaction is passed into execute' do
      it 'adds the transaction to the transaction history' do
        account = Account.new
        transaction = instance_double('Transaction', :amount => 10, :date => "date")
        account.execute_command(transaction)
        expect(account.transaction_history.length).to eq(1)
      end 
      
    end 
  end

  
end
