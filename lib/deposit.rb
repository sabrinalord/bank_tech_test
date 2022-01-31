class Deposit
  attr_reader :amount_to_deposit, :transaction_date

  def initialize(amount_to_deposit)
    @amount_to_deposit = amount_to_deposit
    @transaction_date = Date.today

  end 

  def execute(account_balance)
    account_balance + amount_to_deposit
  end

end 