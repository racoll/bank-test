require_relative "statement"

class Bank

  attr_reader :statement, :balance

  def initialize
    @balance = 0
    @statement = []
  end

  # def balance # this is solely responsible for displaying the current balance
  #   @balance
  # end

  def print_statement # this prints the statement as formatted output
    puts "date || credit || debit || balance"
    @statement.each do |entry|
      puts entry.each { |p| p}
    end
  end

  def deposit(amount) # this handles deposits to the bank, adding that to the statement array in a certain way with a timestamp
    @balance += amount
    @statement << ["#{time_stamp} || #{amount} || || #{@balance}"]
    amount
  end

  def withdraw(amount) # this handles withdrawals from the bank, adding that to the statement array in a certain way with a timestamp
    @balance -= amount
    @statement << ["#{time_stamp} || || #{amount} || #{@balance}"]
    amount
  end

  private

    def time_stamp # this is creating a time stamp, which is being called in deposit and withdraw methods
      Time.now.strftime("%d/%m/%Y")
    end

end
