# frozen_string_literal: true

require 'deposit'

describe Deposit do
  it 'has a credit value' do
    expect(Deposit.new(10).credit).to eq(10)
  end

  it 'is instantiated with a transaction date' do
    allow(Time).to receive_message_chain(:now, :strftime).and_return '2023,01,14'
    expect(Deposit.new(10).date).to eq(Time.now.strftime('%d/%m/%Y'))
  end

  describe '#execute' do
    it 'returns the new account balance' do
      account = instance_double('Account', balance: 5)
      deposit = Deposit.new(10)
      expect(deposit.execute(account.balance)).to eq 15
    end
  end
end
