class Withdraw
  attr_reader :amount_to_withdraw, :transaction_date

  def initialize(amount_to_withdraw)
    @amount_to_withdraw = amount_to_withdraw
    @transaction_date = Date.today
    @balance_after_transaction = ""
  end 

  def execute(account_balance)
    @balance_after_transaction = account_balance - amount_to_withdraw
  end

end 