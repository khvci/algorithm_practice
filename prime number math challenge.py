"""
Math Challenge

Have teh function MathChallenge(num), take the num parameter being passed and 
return the string true if the parameter is a prime number, otherwise return the 
string false. The range will be between 1 and 2^16.
"""

def MathChallenge(num):
  
  if num < 2:
    return "false"
  
  for i in range(2,num):
    if num % i == 0:
      return "false"
    
  return "true"

print MathChallenge(raw_input())

"""
Result

Success
"""
