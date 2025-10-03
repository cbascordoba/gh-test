# PowerShell Script para ejecutar el agente
# Autor: Sebastián Córdoba Omen

Write-Host "🤖 Iniciando Python Agent..." -ForegroundColor Green
Write-Host "📋 Configurando entorno de ejecución..." -ForegroundColor Yellow

# 1. Configurar política de ejecución
Write-Host "⚙️  Configurando política de ejecución..." -ForegroundColor Cyan
try {
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process -Force
    Write-Host "✅ Política de ejecución configurada correctamente" -ForegroundColor Green
} catch {
    Write-Host "❌ Error configurando política de ejecución: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}

# 2. Verificar que existe el entorno virtual
if (-Not (Test-Path ".venv")) {
    Write-Host "⚠️  Entorno virtual no encontrado. Creando..." -ForegroundColor Yellow
    python -m venv .venv
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ Error creando entorno virtual" -ForegroundColor Red
        exit 1
    }
    Write-Host "✅ Entorno virtual creado" -ForegroundColor Green
}

# 3. Activar entorno virtual
Write-Host "🔧 Activando entorno virtual..." -ForegroundColor Cyan
try {
    & ".venv\Scripts\activate"
    Write-Host "✅ Entorno virtual activado" -ForegroundColor Green
} catch {
    Write-Host "❌ Error activando entorno virtual: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}

# 4. Instalar dependencias si es necesario
if (Test-Path "requirements.txt") {
    Write-Host "📦 Instalando dependencias..." -ForegroundColor Cyan
    pip install -r requirements.txt --quiet
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✅ Dependencias instaladas correctamente" -ForegroundColor Green
    } else {
        Write-Host "⚠️  Algunas dependencias pueden no haberse instalado correctamente" -ForegroundColor Yellow
    }
}

# 5. Verificar que existe el archivo del agente
if (-Not (Test-Path "src\agent.py")) {
    Write-Host "❌ Error: No se encontró src\agent.py" -ForegroundColor Red
    Write-Host "📁 Estructura de archivos esperada:" -ForegroundColor Yellow
    Write-Host "   ├── src/" -ForegroundColor Gray
    Write-Host "   │   └── agent.py" -ForegroundColor Gray
    Write-Host "   ├── .venv/" -ForegroundColor Gray
    Write-Host "   └── requirements.txt" -ForegroundColor Gray
    exit 1
}

# 6. Ejecutar el agente
Write-Host "" 
Write-Host "🚀 Ejecutando agente..." -ForegroundColor Green
Write-Host "=" * 50 -ForegroundColor Gray

python src\agent.py

# 7. Mostrar resultado
Write-Host ""
Write-Host "=" * 50 -ForegroundColor Gray
if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Agente ejecutado exitosamente" -ForegroundColor Green
} else {
    Write-Host "❌ El agente terminó con errores (código: $LASTEXITCODE)" -ForegroundColor Red
}

Write-Host "🔚 Fin de la ejecución" -ForegroundColor Cyan