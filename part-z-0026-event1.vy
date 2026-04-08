# pragma version ^0.4.0
# @ license: MIT  

event Firm:

   owner: indexed(String[25])
   capital: uint32
   start_year: uint16


@external
def give_info(_owner: String[25], _capital: uint32, _start_year: uint16):

   # owner = "Ayhan Bilir"
   # capital = 430_000
   # start_year = 2026

   log Firm(_owner, _capital, _start_year)
