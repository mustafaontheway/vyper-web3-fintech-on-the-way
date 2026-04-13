# pragma version ^0.4.0
# @ license: MIT  

MIN_FUND_AMOUNT_USD: public(immutable(uint8)) 

ETH_USD_FEED_SEPOLIA: public(constant(address)) = 0x694AA1769357215DE4FAC081bf1f309aDC325306

price_feed_address: public(address)

@deploy 
def __init__():

    MIN_FUND_AMOUNT_USD = 10

    self.price_feed_address = ETH_USD_FEED_SEPOLIA

@external
@payable
def fund_me():
    
    pass


def withdraw_fund():

    pass

@internal
def _get_latest_eth_usd_price() -> uint256:

    return 0
