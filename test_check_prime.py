#pip install -U pytest
#conda install -c anaconda pytest=3.0.7

from check_prime import *

def test_is_prime5():   # test that the prime number 5 really returns True
    assert is_prime(5), '5 should be prime!'

def test_is_prime10():  # check that non-prime 10 returns False
    assert is_prime(10) == False, '10 is not prime!'

def test_is_primeminus8(): # check that negs (-8) are not prime (False)
    assert is_prime(-8) == False, 'Negatives are not prime'

def test_is_prime1(): # check 1 is not prime
    assert is_prime(1) == False, '1 is not prime'

def test_is_prime0():
    assert is_prime(0) == False, '0 is not prime'

def test_is_primelarge():
    assert is_prime(293)

def test_isprimelargenot():
    assert is_prime(100000000000) == False
