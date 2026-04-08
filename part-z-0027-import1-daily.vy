# pragma version ^0.4.0
# @ license: MIT  

from . import my_math

@external
@pure
def daily_calc(x: int256, y: int256) -> (int256, int256, int256, int256):

   return (my_math.sum_nums(x, y), my_math.subs_nums(x, y), my_math.mult_nums(x, y), my_math.div_nums(x, y))
