class Withdraw
  attr_reader :debit, :date, :credit, :new_balance

  def initialize(amount_to_withdraw)
    @credit = 0
    @debit = amount_to_withdraw
    @date = Time.now.strftime("%d/%m/%Y")
    @new_balance = 0
  end 

  def execute(account_balance)
    @new_balance = account_balance - @debit
  end

end 