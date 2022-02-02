# frozen_string_literal: true

require 'print_statement'
require 'account'
require 'withdraw'

describe PrintStatement do
  describe '#print_statement' do

    context 'when passed into an accounts execute method' do
      it 'outputs to stdout' do
        account = Account.new
        deposit = object_double(Deposit.new(10), execute: 10, date: '01/02/2022', credit: 10, debit: 0,
        new_balance: 10)
        account.execute_command(deposit)

        expect do
          account.execute_command(PrintStatement.new)
        end.to output("Date(D.M.Y)||Credit|| Debit || Balance\n01/02/2022 ||  10  ||   0   || 10\n").to_stdout
      end
    end
  end
end
