# https://www.hackerrank.com/challenges/py-if-else/submissions/code/222982627


#!/bin/python3

import math
import os
import random
import re
import sys




n = int(input().strip())
check = {True : "Not Weird", False : "Weird"}

print(check[n %2 == 0 and (n in range(2,6) or n > 20)])
