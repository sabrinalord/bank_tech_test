# frozen_string_literal: true

require 'withdraw'

describe Withdraw do
  it 'has a debit value' do
    expect(Withdraw.new(10).debit).to eq(10)
  end

  it 'is instantiated with a transaction date' do
    allow(Time).to receive_message_chain(:now, :strftime).and_return '2023,01,14'
    expect(Withdraw.new(10).date).to eq(Time.now.strftime('%d/%m/%Y'))
  end

  describe '#execute' do
    it 'returns the new account balance' do
      account = instance_double('Account', balance: 10)
      withdraw = Withdraw.new(10)
      expect(withdraw.execute(account.balance)).to eq 0
    end
  end
end
