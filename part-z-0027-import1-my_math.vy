# pragma version ^0.4.0
# @ license: MIT  

@internal
@pure
def sum_nums(x: int256, y: int256) -> int256:

    return x + y


@internal
@pure
def subs_nums(x: int256, y: int256) -> int256:

    return x - y


@internal
@pure
def mult_nums(x: int256, y: int256) -> int256:

    return x * y


@internal
@pure
def div_nums(x: int256, y: int256) -> int256:

    assert y != 0, "Zero division error!"

    return x // y
