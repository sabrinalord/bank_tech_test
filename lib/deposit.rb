class Deposit
  attr_reader :amount_to_deposit

  def initialize(amount_to_deposit)
    @amount_to_deposit = amount_to_deposit

  end 

  def execute(account_balance)
    account_balance + amount_to_deposit
  end

end 