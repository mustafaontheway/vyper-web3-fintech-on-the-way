# pragma version ^0.4.0
# @ license: MIT  

event SellingContract:

   seller: indexed(address)
   buyer: indexed(address)
   amount: uint256
   final_time: uint256


@external
def selling_contract_info(_seller: address, _buyer: address, _amount: uint256, _final_time: uint256):

   log SellingContract(msg.sender, _buyer, _amount, block.timestamp + _final_time)

# Up to 3 parameters can be indexed
