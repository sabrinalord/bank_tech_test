class Withdraw
  attr_reader :amount_to_withdraw, :transaction_date

  def initialize(amount_to_withdraw)
    @amount_to_withdraw = amount_to_withdraw
    @transaction_date = Date.today
  end 

  def execute(account_balance)
    account_balance - amount_to_withdraw
  end

end 