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
    puts "date || credit/debit || balance"
    @statement.each do |entry|
      puts entry.each { |p| p}
    end
  end

  def deposit(amount)
    @balance += amount
    @statement << ["#{time_stamp(amount)} || #{@balance}"]
    amount
  end

  def withdraw(amount)
    @balance -= amount
    @statement << ["#{time_stamp(amount)} || #{@balance}"]
    amount
  end

  private

    def time_stamp(amount)
      "#{Time.now.strftime("%d/%m/%Y")} || #{amount}"
    end

end
