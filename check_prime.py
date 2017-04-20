#!/usr/bin/env python3

import sys

def is_prime(number):

    if number <= 1:
        return False

    for element in range(2,number):  #start w 2 b/c don't divide by 0
        if number % element == 0:
            return False
    return True

#below - don't run this if imported
if __name__ == "__main__":
    my_number = int(sys.argv[1])
    print(is_prime(my_number))
