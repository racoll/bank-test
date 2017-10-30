require "bank"

RSpec.describe Bank do

  subject(:bank) { described_class.new }

  it "initializes with a balance of zero" do
    # bank = Bank.new
    expect(bank.current_balance).to equal(0)
  end

end
