# Python Agent Project

Un proyecto de agente inteligente desarrollado en Python con capacidades de procesamiento y automatización.

## 📋 Descripción

Este proyecto implementa un agente inteligente que puede [descripción específica de lo que hace tu agente]. El agente está diseñado para ejecutarse de manera eficiente y proporcionar [funcionalidades específicas].

## 🚀 Características

- ✅ Agente inteligente con capacidades de procesamiento
- ✅ Interfaz de línea de comandos
- ✅ Configuración flexible
- ✅ Logging y monitoreo
- ✅ Manejo de errores robusto

## 📁 Estructura del Proyecto

```
├── src/
│   └── agent.py          # Archivo principal del agente
├── .venv/                # Entorno virtual de Python
├── requirements.txt      # Dependencias del proyecto
├── README.md            # Este archivo
└── [otros archivos del proyecto]
```

## 🛠️ Instalación y Configuración

### Prerrequisitos

- Python 3.8 o superior
- Git
- PowerShell (para Windows)

### Pasos de Instalación

1. **Clonar el repositorio**
   ```bash
   git clone https://github.com/cbascordoba/gh-test.git
   cd gh-test
   ```

2. **Configurar política de ejecución (Windows)**
   ```powershell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process
   ```

3. **Crear y activar entorno virtual**
   ```bash
   # Crear entorno virtual
   python -m venv .venv
   
   # Activar entorno virtual
   .venv\Scripts\activate  # Windows
   # source .venv/bin/activate  # Linux/Mac
   ```

4. **Instalar dependencias**
   ```bash
   pip install -r requirements.txt
   ```

## 🚀 Uso

### Ejecución Básica

Para ejecutar el agente, usa el siguiente comando:

```bash
python src/agent.py
```

### Scripts de Inicio Rápido

#### Windows (PowerShell)
```powershell
# Ejecutar estos comandos en orden:
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process
.venv\Scripts\activate
python src/agent.py
```

#### Linux/Mac (Bash)
```bash
source .venv/bin/activate
python src/agent.py
```

### Parámetros de Configuración

El agente acepta varios parámetros:

```bash
python src/agent.py --help  # Ver todas las opciones disponibles
```

## ⚙️ Configuración

### Variables de Entorno

Crea un archivo `.env` en la raíz del proyecto:

```env
# Configuración del agente
AGENT_DEBUG=True
AGENT_LOG_LEVEL=INFO

# APIs y servicios externos
API_KEY=tu_api_key_aqui
API_URL=https://api.ejemplo.com

# Base de datos (si aplica)
DATABASE_URL=sqlite:///agent.db
```

### Archivos de Configuración

El agente puede usar archivos de configuración en formato JSON o YAML para personalizar su comportamiento.

## 🧪 Testing

Ejecutar las pruebas:

```bash
# Ejecutar todas las pruebas
pytest

# Ejecutar con cobertura
pytest --cov=src

# Ejecutar pruebas específicas
pytest tests/test_agent.py
```

## 📊 Monitoreo y Logs

Los logs del agente se generan en:
- Consola: Nivel INFO y superior
- Archivo: `logs/agent.log` (si está configurado)

## 🤝 Contribución

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📝 Changelog

### [Versión Actual]
- ✅ Implementación inicial del agente
- ✅ Configuración de entorno de desarrollo
- ✅ Documentación básica

## 🐛 Resolución de Problemas

### Problemas Comunes

1. **Error de política de ejecución en Windows**
   ```powershell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process
   ```

2. **Problemas con el entorno virtual**
   ```bash
   # Eliminar y recrear el entorno virtual
   rm -rf .venv
   python -m venv .venv
   .venv\Scripts\activate
   pip install -r requirements.txt
   ```

3. **Dependencias faltantes**
   ```bash
   pip install --upgrade pip
   pip install -r requirements.txt --force-reinstall
   ```

## 📄 Licencia

Este proyecto está bajo la licencia MIT - ver el archivo [LICENSE](LICENSE) para detalles.

## 👨‍💻 Autor

**Sebastián Córdoba Omen**
- GitHub: [@cbascordoba](https://github.com/cbascordoba)
- Email: cbascordoba14@gmail.com
- Empresa: Davivienda

## 🙏 Agradecimientos

- Gracias a la comunidad de Python por las excelentes librerías
- Inspirado en las mejores prácticas de desarrollo de agentes IA
- Documentación basada en estándares de la industria

---

⭐ Si este proyecto te ha sido útil, no olvides darle una estrella en GitHub!