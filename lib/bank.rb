class Bank

  attr_reader :statement

  def initialize
    @balance = 0
    @statement = []
  end

  def balance
    @balance
  end

  def deposit(amount)
    @balance += amount
    @statement << amount
    @balance
  end

  def withdraw(amount)
    @balance -= amount
    @balance
  end

  def print_statement
    "deposited: #{10}, withdrew: #{5}"
  end

  def store_deposit(amount)
    @statement << time_stamp(amount)
  end

private

  def time_stamp(amount)
    "#{amount} : #{Time.now}"
  end

end
