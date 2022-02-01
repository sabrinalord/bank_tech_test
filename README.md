# Bank Tech Test

## Project Goals
The aim of this project is to demonstrate high quality code.

## Requirements
* You should be able to interact with your code via a REPL like IRB or Node. (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

## Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2023
And a deposit of 2000 on 13-01-2023
And a withdrawal of 500 on 14-01-2023
When she prints her bank statement
Then she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

## My Approach

For this project I aimed to follow the single responsibility princple so that each class and method are only responsible for one thing. 

I decided to use the Command design pattern in my solution. Commands are encapsulated as objects, so that Deposit and Withdraw can be initialized and executed within an Account instance. 

Whilst this means the code is substantially larger, the benefits ae that edits can be made to either Withdraw or Deposit without altering the Account class. If you needed to add a withdraw or deposit limit, or a pin number to the account, you could do so whilst only altering one file of code. 


## How to run

### Clone the repository 
```
git clone https://github.com/sabrinalord/bank_tech_test.git
cd into bank_tech_test
```

### Install gems

```
bundle install
```

### Interaction

Open up IRB in the project's terminal. 
Require app.rb

```
irb -r ./app.rb
```

Interact with the program with:

```
account = Account.new
account.execute_command(Deposit.new(20))
account.execute_command(Deposit.new(40))
account.execute_command(Deposit.new(20))
account.execute_command(Withdraw.new(10))
statement = Statement.new(account)
statement.print_out
```

