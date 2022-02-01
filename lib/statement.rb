class Statement 
  attr_reader :account

  def initialize(account)
    @account = account
     @transaction_summary = {
        date: 0,
        credit: 0,
        debit: 0,
        balance: 0
      }
      
  end 

  def print_out
   puts "date   || credit  || debit || balance "
     @account.transaction_history.each do |transaction|
      puts "
             #{transaction.transaction_date}   || 
            #{transaction.amount_to_deposit}   || 
             #{transaction.amount_to_withdraw}  ||
             #{transaction.balance_after_transaction}
             "     
    end 
  end 

end 