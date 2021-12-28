"""
String Challenge

Have the function StringChallenge(str), take the str parameter being passed 
and return the string true if the parameter is a palindrome, otherwise return the string false. 
"""

def StringChallenge(strParam):

	strParam = strParam.lower().replace(' ', '')
	
	return strParam == strParam[::-1]

print(StringChallenge(input()))

"""
Result

Success
"""
