# frozen_string_literal: true

class PrintStatement


  def initialize
    @statement_headings = 'date || credit || debit || balance'
  end 

  def execute(transaction_history)
    puts @statement_headings
      transaction_history.reverse_each do |transaction|
        isDeposit = transaction.amount > 0 ? transaction.amount : ""
        isWithdrawal = transaction.amount < 0 ? transaction.amount : ""
         balance = 0 
      puts "#{transaction.date} || #{isDeposit} || #{isWithdrawal} || #{balance += transaction.amount}  "
    end
  end
end
