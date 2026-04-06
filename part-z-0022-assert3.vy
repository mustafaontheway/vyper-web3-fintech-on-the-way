# pragma version ^0.4.0
# @ license: MIT  

year_counter: public(uint16)

@deploy
def __init__():

   self.year_counter = 2026


@external
def year_up():

   assert self.year_counter < 2100, "Too long!"

   self.year_counter += 1

      

