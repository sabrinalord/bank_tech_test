class Statement 
  attr_reader :account

  def initialize(account)
    @account = account

  end 

  def print_out
     @account.transaction_history
  end 


end 