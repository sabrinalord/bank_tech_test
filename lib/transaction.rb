class Transaction
  attr_reader :amount, :date, :credit, :new_balance

  def initialize(amount)
    @amount = amount
    @date = Time.now
  end

end
