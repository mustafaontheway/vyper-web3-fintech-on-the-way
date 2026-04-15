# pragma version ^0.4.0
# @ license: MIT  

evens: public(DynArray[uint8, 20])
odds: public(DynArray[uint8, 20])

@external
def return_two_array():

   self.evens = []
   self.odds = []

   for n: uint8 in range(10, 31):

      if n % 2 == 0:

         self.evens.append(n)

      else:

         self.odds.append(n)

   
