# pragma version ^0.4.0
# @ license: MIT  

eth_premium_by_address: public(HashMap[address, uint8])


@external
def set_premium(eth_amount: uint8, user_age: uint8):

   if user_age <= 18:

      raise "User is a child!"

   else:

      self.eth_premium_by_address[msg.sender] = eth_amount

      

