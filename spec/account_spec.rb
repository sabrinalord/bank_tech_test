require 'account'

describe Account do

  context "on creation" do
    it 'has a balance of 0' do
      expect(subject.balance).to eq(0)
    end

    it 'has an empty transaction history' do
      expect(subject.transaction_history).to eq([])
    end     
  end
end