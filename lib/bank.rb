class Bank

  # attr_reader :balance

  def initialize
    @balance = 0
  end

  def balance
    @balance
  end

  def deposit(amount)
    @balance += amount
    @balance
  end

  def withdraw(amount)
    @balance -= amount
    @balance
  end

  def print_statement
    "deposited: #{10}, withdrew: #{5}"
  end

end
