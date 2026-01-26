#!/bin/bash
echo "Activando entorno virtual"
source venv/bin/activate
echo "Instalando dependencias"
pip install -r requirements.txt
echo "Ejecutando pruebas"
pytest test/ --junitxml=reports/test-result.xml --html=reports/test-result.html --self-contained-html
echo "Pruebas ejecutadas"

