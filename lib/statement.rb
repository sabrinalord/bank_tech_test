class Statement 
  attr_reader :account

  def initialize(account)
    @account = account
  end 
  
  def print_out
    puts 'Date(D.M.Y)||Credit|| Debit || Balance'
      @account.transaction_history.reverse_each do |transaction|
      puts "#{transaction.date} ||  #{transaction.credit}  ||   #{transaction.debit}   || #{transaction.new_balance}"     
    end 
  end 
end 