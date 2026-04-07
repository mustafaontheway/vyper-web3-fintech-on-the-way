# pragma version ^0.4.0
# @ license: MIT  

WEI_FOR_ETHER: constant(uint256) = 1_000_000_000_000_000_000

@payable
@deploy
def __init__():

   assert WEI_FOR_ETHER == as_wei_value(1, "ether"), "1 ether"
