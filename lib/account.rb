# frozen_string_literal: true

class Account
  attr_reader :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def execute_command(command)
     if command.instance_of?(PrintStatement)
        command.execute(@transaction_history)
     else 
        @transaction_history << command
        @balance = command.execute(@balance)
     end 
  end

end
