# frozen_string_literal: true

class Account
  attr_reader :balance, :transaction_history, :execute_command

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def execute_command(command)
    @transaction_history << command
    @balance = command.execute(@balance)
  end
end
