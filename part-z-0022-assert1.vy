# pragma version ^0.4.0
# @ license: MIT  


@external
def check_voter1(age: uint8) -> bool:

   assert age >= 18 and age <= 90, "Consider age limits!"

   return True

     
@external
def check_voter2(age: int16) -> bool:

   assert age > 0, "Consider age limits!"

   return age >= 18 and age <= 90
