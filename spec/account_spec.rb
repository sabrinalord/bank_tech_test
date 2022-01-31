require 'account'

describe Account do

  context "on creation" do
    it 'has a balance of 0' do
      expect(subject.balance).to eq(0)
    end
    
  end
end