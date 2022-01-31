require 'statement' 

describe Statement do

  describe '#print_statement' do 

  #   `date       || credit  || debit || balance
  # 14/01/2023 ||         || 500.00 || 2500.00
  # 13/01/2023 || 2000.00 ||         || 3000.00
  # 10/01/2023 || 1000.00 ||         || 1000.00`

    context 'given an account' do 

      it 'returns the accounts transaction history' do 
        account = object_double(Account.new, :transaction_history => "transaction info")
        statement = Statement.new(account)
        expect(statement.print_out).to eq("transaction info")
   
      end

    end 

  end 


end 