import pytest

def sumar(a, b):
    """Suma dos números y retorna el resultado."""
    return a + b


def test_sumar_positivos():
    """Prueba suma de números positivos."""
    assert sumar(2, 3) == 5


def test_sumar_negativos():
    """Prueba suma de números negativos."""
    assert sumar(-2, -3) == -5


def test_sumar_mixtos():
    """Prueba suma de números positivos y negativos."""
    assert sumar(5, -2) == 3


def test_sumar_ceros():
    """Prueba suma con ceros."""
    assert sumar(0, 0) == 0

def test_sumar_fail():
    assert sumar(10, 2) == 10