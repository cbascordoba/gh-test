@echo off
REM Batch script para ejecutar el agente Python
REM Autor: Sebastian Cordoba Omen

echo.
echo 🤖 Iniciando Python Agent...
echo 📋 Configurando entorno de ejecucion...

REM 1. Configurar politica de ejecucion y ejecutar PowerShell script
powershell -ExecutionPolicy RemoteSigned -File "run_agent.ps1"

REM Pausar para ver resultados
echo.
echo Presiona cualquier tecla para salir...
pause >nul