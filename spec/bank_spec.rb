require "bank"

RSpec.describe Bank do

  subject(:bank) { described_class.new }

  it "initializes with a balance of zero" do
    # bank = Bank.new
    expect(bank.balance).to eq(0)
  end

  it "can return the balance to the customer" do
    expect(bank.balance).to eq(0)
  end

  it "allows a customer to deposit an amount" do
    bank.deposit(10)
    expect(bank.balance).to eq(10)
  end

  it "allows a customer to withdraw an amount" do
    bank.deposit(10)
    bank.withdraw(5)
    expect(bank.balance).to eq(5)
  end

  # it "can print a statement with one deposit" do
  #   bank.deposit(10)
  #   expect(bank.print_statement).to eql("deposited: #{10}")
  # end

  it "can print a statement with one deposit and one withdrawal" do
    bank.deposit(10)
    bank.withdraw(5)
    expect(bank.print_statement).to eq("deposited: #{10}, withdrew: #{5}")
  end

  it "initializes with an empty statement" do
    expect(bank.statement).to eq([])
  end

  it "can store a deposit in the statement" do
    bank.deposit(10)
    expect(bank.statement).to eq(["Deposited #{10} : #{Time.now}"])
  end

  it "can store a withdrawal in the statement" do
    bank.withdraw(5)
    expect(bank.statement).to eq(["Withdrew #{5} : #{Time.now}"])
  end

  # it "can attach a time stamp to a deposit" do
  #   expect(bank.time_stamp(10)).to eq("#{10} : #{Time.now}")
  # end

end
