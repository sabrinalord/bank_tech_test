# frozen_string_literal: true

class Account

  def initialize
    @transaction_history = []
  end

  def execute_command(command)
     if command.instance_of?(PrintStatement)
        command.execute(@transaction_history)
     else 
        @transaction_history << command
     end 
  end

end
