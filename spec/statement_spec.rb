require "statement"
# require "bank"

RSpec.describe Statement do

  subject(:statement) { described_class.new }

  it "displays a statement showing a deposit of 100" do
    # bank = Bank.new
    # bank.deposit(200)
    # bank.withdraw(50)
    expect(statement.display).to eq("#{Time.now} || #{100} || #{100}")
  end


end
