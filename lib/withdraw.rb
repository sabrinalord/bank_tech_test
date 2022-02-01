class Withdraw
  attr_reader :amount_to_withdraw, :transaction_date

  def initialize(amount_to_withdraw)
    # @amount_to_withdraw = amount_to_withdraw
    # @transaction_date = Time.now.strftime("%d/%m/%Y")
    # @balance_after_transaction = 0
    @credit = 0
    @debit = amount_to_withdraw
    @date = Time.now.strftime("%d/%m/%Y")
    @balance_after_transaction = 0
  end 

  def execute(account_balance)
    @balance_after_transaction = account_balance - @debit
  end

end 