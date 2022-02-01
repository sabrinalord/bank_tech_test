require 'statement' 

describe Statement do

  describe '#print_statement' do 

    context 'given an account' do 
      it 'prints the accounts transaction history' do 

       account = Account.new
       account.execute_command(Deposit.new(10))

        statement = Statement.new(account)
        expect(statement.print_out).to output(a_string_including(10)).to_stdout
     
      end

    end 

  end 


end 