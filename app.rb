require './lib/account'
require './lib/deposit'
require './lib/statement'
require './lib/withdraw'


# Uncomment the below or paste into IRB
account = Account.new
account.execute_command(Deposit.new(20))
account.execute_command(Deposit.new(40))
account.execute_command(Deposit.new(20))
account.execute_command(Withdraw.new(10))
statement = Statement.new(account)
statement.print_out