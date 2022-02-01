class Statement 
  attr_reader :account

  def initialize(account)
    @account = account
  end 

  def print_out
   puts "Date       ||Credit|| Debit || Balance "
    
   @account.transaction_history.each do |transaction|
        puts "#{transaction.date} ||  #{transaction.credit}  ||  #{transaction.debit}  || #{transaction.new_balance}"     
    end 
  end 

end 