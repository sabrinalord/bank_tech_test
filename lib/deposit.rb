class Deposit
  attr_reader :credit, :date, :debit, :new_balance

  def initialize(amount_to_deposit)
    # @amount_to_deposit = amount_to_deposit
    # @transaction_date = Time.now.strftime("%d/%m/%Y")
    # @balance_after_transaction = 0
    @credit = amount_to_deposit
    @debit = 0
    @date = Time.now.strftime("%d/%m/%Y")
    @new_balance = 0

  end 

  def execute(account_balance)
    @new_balance = account_balance + @credit
  end

end 