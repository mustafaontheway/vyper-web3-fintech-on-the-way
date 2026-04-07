# pragma version ^0.4.0
# @ license: MIT  

MIN_FUND_AMOUNT_WEI: constant(uint256) = 5_000_000

@payable
@external
def fund_out_project():

   """

   Let's fund our project

   This function can now receive ETH sent with the transaction call

   msg.value is a uint256 and msg.value always holds the amount in Wei

   """

   assert msg.value >= MIN_FUND_AMOUNT_WEI, "More Wei:)"
