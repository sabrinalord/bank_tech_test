# frozen_string_literal: true

class PrintStatement

  def execute(transaction_history)
    puts 'date || credit || debit || balance'
      transaction_history.reverse_each do |transaction|
      puts "#{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{transaction.new_balance}"
    end
  end
end
