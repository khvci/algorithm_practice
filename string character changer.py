"""
Have the function StringChallenge(str), take the str parameter being passed and modify
it using the following algorithm. Replace every letter in the string with the following
in the alphabet. Then capitalize every vowel in this new stringand finally return this
modified string.

Example:
Input: hello*3
Output: Ifmmp*3

Input: fun times!
Output: gvO Ujnft!
"""

import re

def StringChallenge(strParam):

    replaceCaharacters = {
        'a': 'b',
        'b': 'c',
        'c': 'd',
        'd': 'E',
        'e': 'f',
        'f': 'g',
        'g': 'h',
        'h': 'I',
        'i': 'j',
        'j': 'k',
        'k': 'l',
        'l': 'm',
        'm': 'n',
        'n': 'O',
        'o': 'p',
        'p': 'q',
        'q': 'r',
        'r': 's',
        's': 't',
        't': 'U',
        'u': 'v',
        'v': 'w',
        'w': 'x',
        'x': 'y',
        'y': 'z',
        'z': 'A',
    }

    newString = re.sub(r"[abcdefghijklmnopqrstuvWxyz]", lambda x: replaceCaharacters[x.group(0)], strParam)

    return newString

print(StringChallenge(input()))

"""
Result

Success
"""
