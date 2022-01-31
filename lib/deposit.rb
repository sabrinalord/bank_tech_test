class Deposit
  attr_reader :amount_to_deposit, :transaction_date

  def initialize(amount_to_deposit)
    @amount_to_deposit = amount_to_deposit
    @transaction_date = Time.now.strftime("%d/%m/%Y")
    @balance_after_transaction = 0

  end 

  def execute(account_balance)
    @balance_after_transaction = account_balance + amount_to_deposit
  end

end 