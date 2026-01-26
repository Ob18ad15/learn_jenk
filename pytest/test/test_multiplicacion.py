import pytest

def multiplicar(a,b):
    return a * b

def multiplicar_test ():
    assert multiplicar(1,3) == 3
    assert multiplicar(2, 5) == 10