# pragma version ^0.4.0
# @ license: MIT  

MIN_FUND_AMOUNT_USD: public(immutable(uint256)) 

ETH_USD_FEED_SEPOLIA: public(constant(address)) = 0x694AA1769357215DE4FAC081bf1f309aDC325306

price_feed_address: public(address)

owner: public(immutable(address))

funders: public(DynArray[address, 1000000])

fund_amount_by_address: public(HashMap[address, uint256])

interface AggregatorV3Interface:

    def decimals() -> uint8: view
    def latestAnswer() -> int256: view


@deploy 
def __init__():

    MIN_FUND_AMOUNT_USD = 10

    self.price_feed_address = ETH_USD_FEED_SEPOLIA

    owner = msg.sender # "hard code my address? think! why or not and when?"

@external
@payable
def fund_me():

    eth_price_as_wei: uint256 = self._get_latest_wei_usd_price() # returns eth wei price, 10 ** 18

    usd_value: uint256 = (msg.value * eth_price_as_wei) // 10 ** 18 # msg.value -> wei, 10 ** 18 => 10 ** 36 / 10 ** 18 = 10 ** 18
    
    assert usd_value >= MIN_FUND_AMOUNT_USD * 10 ** 18, "At least $10!"

    self.funders.append(msg.sender)

    self.fund_amount_by_address[msg.sender] += msg.value # usd_value != Wei...


@external
def withdraw_fund():

    assert msg.sender == owner, "Only owner can withdraw!"

    send(owner, self.balance)

    # gas consumer giant!

    for funder: address in self.funders:

        self.fund_amount_by_address[funder] = 0

    self.funders = []



# @internal
# @view
# def _get_latest_eth_usd_price() -> uint256:

#     price: int256 = staticcall AggregatorV3Interface(self.price_feed_address).latestAnswer()

#     assert price > 0, "Only positive values!"

#     return convert(price, uint256)


@internal
@view
def _get_latest_wei_usd_price() -> uint256:

    price_wei_converted: int256 = staticcall AggregatorV3Interface(self.price_feed_address).latestAnswer() * (10 ** 10)

    assert price_wei_converted > 0, "Only positive values!"

    return convert(price_wei_converted, uint256)


@external
@view
def get_decimals() -> uint8:

    decimal_count: uint8 = staticcall AggregatorV3Interface(self.price_feed_address).decimals()

    return decimal_count


# @internal
# def _get_latest_eth_usd_price() -> uint256:

#     return 0
