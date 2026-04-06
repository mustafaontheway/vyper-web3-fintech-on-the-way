# pragma version ^0.4.0
# @ license: MIT  

eth_premium_by_address: public(HashMap[address, uint8])


@external
def set_premium(amount: uint8):

   self.eth_premium_by_address[msg.sender] = amount

      

