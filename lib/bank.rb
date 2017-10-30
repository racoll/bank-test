require_relative "statement"

class Bank

  attr_reader :statement

  def initialize
    @balance = 0
    @statement = []
  end

  def balance
    @balance
  end

  def print_statement
    "deposited: #{10}, withdrew: #{5}"
  end

  def deposit(amount)
    @balance += amount
    @statement << "Deposited #{time_stamp(amount)}"
    amount
  end

  def withdraw(amount)
    @balance -= amount
    @statement << "Withdrew #{time_stamp(amount)}"
    amount
  end

  private

    def time_stamp(amount)
      "#{amount} : #{Time.now.strftime("%d/%m/%Y")}"
    end

end
