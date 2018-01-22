require_relative "statement"

class Bank

  attr_reader :statement, :balance

  def initialize
    @balance = 0 # setting initil stte? is this relly necessry?
    @statement = [] # empty rry to push trnsction s into, to store trnsctions
  end

  # def balance # this is solely responsible for displaying the current balance
  #   @balance
  # end

  # def print_statement # this prints the statement as formatted output
  #   puts "date || credit || debit || balance" # outputting  heder, where info lies bout the sttement eheders
  #   @statement.each do |entry| # loopong over ll entrieds to print out ech one
  #     puts entry.each { |p| p} # loops gin ech item in sub rry nd puts ech item
  #   end # retuns @stetemnt
  # end

  def deposit(amount) # this handles deposits to the bank, adding that to the statement array in a certain way with a timestamp
    @balance += amount # updtes the stte of the bnk blnce vrible
    @statement << ["#{time_stamp} || #{amount} || || #{@balance}"] #creting  string in n rry whcih represents  trnsction, by interpoltion, pushing it into n rry to store it
    amount # returns the output/mount
  end

  def withdraw(amount) # this handles withdrawals from the bank, adding that to the statement array in a certain way with a timestamp
    @balance -= amount
    @statement << ["#{time_stamp} || || #{amount} || #{@balance}"]
    amount
  end


  #  test!

  private

    def time_stamp # this is creating a time stamp, which is being called in deposit and withdraw methods
      Time.now.strftime("%d/%m/%Y") # uses a particular time format
    end

end
