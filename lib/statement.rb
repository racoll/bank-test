# arguments are how you wire the components/boxes of logic together! as in statement_array argument below.
# next step would be to have an account class that is responsible for storing the data
require_relative "bank"

class Statement

  def display
    "#{Time.now} || #{100} || #{100}"
  end

  def print_statement(statement_array) # this prints the statement as formatted output
    puts "date || credit || debit || balance" # outputting  heder, where info lies bout the sttement eheders
    statement_array.each do |entry| # loopong over ll entrieds to print out ech one
      puts entry.each { |p| p} # loops gin ech item in sub rry nd puts ech item
    end # retuns @stetemnt
  end


end
