# frozen_string_literal: true

require 'account'
require 'deposit'

describe Account do

  describe '#execute_command' do
    context 'when a new printStatement is passed into execute' do
      it 'outputs to stdout' do
        account = Account.new
        account.execute_command(PrintStatement.new)

        expect do
          account.execute_command(PrintStatement.new)
        end.to output("date || credit || debit || balance\n").to_stdout
      end
    end
  end
end
