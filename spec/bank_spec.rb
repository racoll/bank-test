require "bank"

RSpec.describe Bank do

  subject(:bank) { described_class.new }

  it "initializes with a balance of zero" do
    # bank = Bank.new
    expect(bank.balance).to equal(0)
  end

  it "allows a customer to deposit an amount" do
    bank.deposit(10)
    expect(bank.balance).to equal(10)
  end

  it "allows a customer to withdraw an amount" do
    bank.deposit(10)
    bank.withdraw(5)
    expect(bank.balance).to equal(5)
  end

  # it "can print a statement with one deposit" do
  #   bank.deposit(10)
  #   expect(bank.print_statement).to eql("deposited: #{10}")
  # end

  it "can print a statement with one deposit and one withdrawal" do
    bank.deposit(10)
    bank.withdraw(5)
    expect(bank.print_statement).to eql("deposited: #{10}, withdrew: #{5}")
  end

end
