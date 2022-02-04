require 'transaction'

describe Transaction do

  it 'is instantiated with a transaction date' do
    allow(Time).to receive_message_chain(:now).and_return '2023,01,14'
    expect(Transaction.new(10).date).to eq(Time.now)
  end

  it 'is instantiated with an amount' do
    transaction = Transaction.new(20)
    expect(transaction.amount).to eq(20)
  end


end

