# frozen_string_literal: true

class PrintStatement

  def execute(transaction_history)
    puts 'date || credit || debit || balance'
      transaction_history.reverse_each do |transaction|
        isDeposit = transaction.amount > 0 ? transaction.amount : ""
        isWithdrawal = transaction.amount < 0 ? transaction.amount : ""
        # balance = 0 
      puts "#{transaction.date} || #{isDeposit} || #{isWithdrawal} || #{transaction.amount += transaction.amount}  "
    end
  end
end
