class Statement 
  attr_reader :account

  def initialize(account)
    @account = account
  end 

  def print_out
   puts "date   || credit  || debit || balance "
     @account.transaction_history.each do |transaction|
      puts "
             #{transaction.date}   || 
            #{transaction.credit}   || 
             #{transaction.debit}  ||
             #{transaction.balance_after_transaction}
             "     
    end 
  end 

end 