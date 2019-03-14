class Transfer
 # your code here

 attr_reader :sender, :receiver
 attr_accessor :status, :amount, :completed

 def initialize(sender, receiver, amount)
   @sender = sender
   @receiver = receiver
   @amount = amount
   @status = "pending"
   # @completed = false
 end

 def valid?
   @sender.valid? && @receiver.valid?
 end

 # def enough
 #     @enough = @sender.balance - @amount
 # end

 def execute_transaction
   if @sender.balance < @amount
     @status = "rejected"
     "Transaction rejected. Please check your account balance."


   elsif @status == "complete"
     "Transaction has already been completed"

   else
     @sender.balance -= @amount
     @receiver.balance += @amount
     @status = "complete"
     # else
     # "Transaction rejected. Please check your account balance."
   end

   # @completed = true
 end

 def reverse_transfer
   if status == "complete"
     @status ="reversed"
     @receiver.balance -= @amount
     @sender.balance += @amount
   end
 end

end
