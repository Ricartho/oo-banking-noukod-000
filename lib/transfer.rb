class Transfer
  # your code here
  attr_accessor :sender,:receiver,:amount,:status
  @list_transfer = []
  def initialize(sender,receiver,amount,status= "pending")
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = status
  end 
  
  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end 
  
  def execute_transaction
    if @sender.balance > @amount && @status == "pending"
          @sender.balance = @sender.balance - @amount
          @receiver.balance = @receiver.balance + @amount
          self.status = "complete"
    else 
          
        
    end
     
  end 
end
