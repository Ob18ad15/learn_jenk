#!/bin/bash
echo "Activando entorno virtual"
if [ ! -d "venv" ]; then
    python3 -m venv venv
fi
source venv/bin/activate
echo "Instalando dependencias"
pip install --upgrade pip --break-system-packages
pip install pytest pytest-html --break-system-packages
echo "Ejecutando pruebas"
venv/bin/python -m pytest test/ --junitxml=reports/test-result.xml --html=reports/test-result.html --self-contained-html
echo "Pruebas ejecutadas"

