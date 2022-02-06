# frozen_string_literal: true

require 'print_statement'
require 'account'


describe PrintStatement do
  describe '#print_statement' do

    describe '#execute' do

      it 'takes in an array of transaction amounts and orders them by credit or debit ' do
      statement =  PrintStatement.new
      transaction1 = instance_double('Transaction', amount: 25, date: "date")
      transaction2 = instance_double('Transaction', amount: -5, date: "date")
   
       

      expect do
        statement.execute([transaction1, transaction2])
      end.to output("date || credit || debit || balance\ndate ||  || -5 || -5  \ndate || 25 ||  || 25  \n").to_stdout

      end 

    end
  end 

end
