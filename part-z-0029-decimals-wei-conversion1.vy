# pragma version ^0.4.0
# @ license: MIT  

MIN_FUND_AMOUNT_USD: public(immutable(uint8)) 

ETH_USD_FEED_SEPOLIA: public(constant(address)) = 0x694AA1769357215DE4FAC081bf1f309aDC325306

price_feed_address: public(address)

interface AggregatorV3Interface:

    def decimals() -> uint8: view
    def latestAnswer() -> int256: view


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


@external
@view
def get_latest_eth_usd_price() -> uint256:

    price: int256 = staticcall AggregatorV3Interface(self.price_feed_address).latestAnswer()

    assert price > 0, "Only positive values!"

    return convert(price, uint256)


@external
@view
def get_decimals() -> uint8:

    decimal_count: uint8 = staticcall AggregatorV3Interface(self.price_feed_address).decimals()

    return decimal_count


# @internal
# def _get_latest_eth_usd_price() -> uint256:

#     return 0
