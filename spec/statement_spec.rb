# frozen_string_literal: true

require 'statement'
require 'account'
require 'withdraw'

describe Statement do
  describe '#print_statement' do

    context 'given an account' do
      it 'outputs to stdout' do
        deposit = object_double(Deposit.new(10), execute: 10, date: '01/02/2022', credit: 10, debit: 0,
                                                 new_balance: 10)
        account = object_double(Account.new, execute_command: 10, transaction_history: [deposit])

        statement = Statement.new(account)

        expect do
          statement.print_out
        end.to output("Date(D.M.Y)||Credit|| Debit || Balance\n01/02/2022 ||  10  ||   0   || 10\n").to_stdout
      end
    end
  end
end
