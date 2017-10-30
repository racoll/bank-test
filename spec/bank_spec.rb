require "bank"

RSpec.describe Bank do

  it "initializes with a balance of zero" do
    bank = Bank.new
    expect(bank.balance).to equal(0)
  end

end
