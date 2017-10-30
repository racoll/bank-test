Bank tech test

Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time. This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

Specification

Requirements

You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00



USER STORIES:

1) As a bank customer, So I can save, and store money, I want to be able to make a deposit for an amount of money at the bank and see an updated balance.
DONE

2) As a bank customer, so I can spend money, I want to be able to withdraw an amount of money from the bank, and see an updated balance.


3) As a bank customer, so that I can keep track of my bank balance and my spending, I want to be able to print a statement from the bank, showing my balance, having added up deposits and withdrawals.
DIFFERENT CLASS

4) As A bank customer, so that I can determine exactly when I made deposits and withdrawals, I want each deposit and withdrawal to have an associated date.
