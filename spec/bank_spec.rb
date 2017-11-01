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
    bank.deposit(10) # what is the return value here? what do you want it to do?!
    expect(bank.balance).to eq(10) # this is using a different method to test it! BAD
  end

  it "allows a customer to withdraw an amount" do
    bank.deposit(10)
    bank.withdraw(5)
    expect(bank.balance).to eq(5)
  end

  it "can print a statement with one deposit and one withdrawal" do
    bank.deposit(10)
    bank.withdraw(5)
    expect(bank.print_statement).to eq([["#{Time.now.strftime("%d/%m/%Y")} || 10 || || 10"], ["#{Time.now.strftime("%d/%m/%Y")} || || 5 || 5"]])
  end

  it "initializes with an empty statement" do
    expect(bank.statement).to eq([])
  end

  it "can store a deposit in the statement" do
    bank.deposit(10)
    expect(bank.statement).to eq([["#{Time.now.strftime("%d/%m/%Y")} || 10 || || 10"]])
  end

  it "can store a withdrawal in the statement" do
    bank.deposit(10)
    bank.withdraw(5)
    expect(bank.statement).to eq([["#{Time.now.strftime("%d/%m/%Y")} || 10 || || 10"], ["#{Time.now.strftime("%d/%m/%Y")} || || 5 || 5"]])
  end


end
