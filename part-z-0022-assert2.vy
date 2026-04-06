# pragma version ^0.4.0
# @ license: MIT  

eth_premium_by_address: public(HashMap[address, uint8])


@external
def set_premium(addr: address, amount: uint8):

   assert addr != empty(address)

   self.eth_premium_by_address[addr] = amount
