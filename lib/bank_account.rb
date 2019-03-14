class BankAccount

 attr_reader :name
 attr_accessor :balance, :status

 def initialize(name)
   @name = name
   @balance = 1000
   @status = "open"
 end

 def deposit(amount_deposit)

   @balance += amount_deposit
 end

 def display_balance
   "Your balance is $#{@balance}."
 end

 def valid?
     return true if @balance > 0 && @status == "open"
     false
 end

 def close_account
     @status = "closed"
 end
end
