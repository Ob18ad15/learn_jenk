#!/bin/bash
echo "Activando entorno virtual"
if [ ! -d "venv" ]; then
    python3 -m venv venv
fi
source venv/bin/activate
echo "Instalando dependencias"
pip install --upgrade pip
pip install pytest pytest-html
echo "Ejecutando pruebas"
pytest test/ --junitxml=reports/test-result.xml --html=reports/test-result.html --self-contained-html
echo "Pruebas ejecutadas"

