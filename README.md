# 📊 Proyecto de Validación de Datos de Conectividad en Colombia  
**Trabajo de Grado – Maestría en Explotación de Datos y Gestión del Conocimiento**  
**Universidad Austral de Argentina**

---

## 🎯 Objetivo del Proyecto

El proyecto busca **verificar la coherencia y calidad de los datos públicos de conectividad en Colombia**, contrastando la información **oficial del Ministerio TIC (ColombiaTIC)** con las mediciones empíricas publicadas por **Ookla Speedtest Open Data**.

A través de técnicas de **ciencia de datos aplicada**, se desarrolla un proceso reproducible de extracción, integración y validación, cuyo resultado es el **Índice Nacional de Coherencia TIC (INCTIC)**.  
Este índice cuantifica el grado de correspondencia entre la velocidad de Internet reportada por los operadores y la realmente experimentada por los usuarios.

---

## 🧱 Arquitectura General del Proyecto

El flujo metodológico está basado en tres notebooks principales, desarrollados en **Python + DuckDB** bajo la metodología **GitFlow**, garantizando trazabilidad y control de versiones.

| Notebook | Descripción | Rama asociada |
|-----------|--------------|----------------|
| `scrapingColombiaTicFinal3.ipynb` | Extracción, limpieza y consolidación de boletines trimestrales del portal ColombiaTIC (MinTIC). | `feature/notebook1_colombiatic` |
| `scrapingOokla12_fixed.ipynb` | Procesamiento y decodificación de archivos Parquet de Ookla Speedtest, con mapeo de `quadkeys` a departamentos y municipios. | `feature/notebook2_ookla` |
| `03_cruce_ookla_colombiatic.ipynb` | Integración y validación cruzada de datos, cálculo del INCTIC, correlaciones y visualizaciones. | `feature/notebook3_inctic` |

El flujo de trabajo se centraliza en una base analítica **DuckDB**, que permite realizar análisis integrados y generar resultados exportables en formato `.csv`.

---

## 🧩 Estructura del Repositorio

trabajoGradoMCD/
│
├── Codigo/
│ ├── notebooks/ # Notebooks finales
│ ├── control/ # Archivos de control de carga y logs
│ ├── funciones/ # Scripts reutilizables
│ ├── data/ # Resultados exportables (CSV, visualizaciones)
│ ├── deprecados/ # Versiones previas de notebooks
│ └── Documentacion/ # Diagramas y figuras
│
├── README.md # Descripción general del proyecto
├── .gitignore # Configuración de archivos ignorados
└── .gitattributes # Metadatos de codificación
<img width="565" height="299" alt="image" src="https://github.com/user-attachments/assets/1293a925-68d6-42ec-b557-74834d93ce14" />


---

## ⚙️ Metodología de Control de Versiones (GitFlow)

El proyecto adopta **GitFlow** para la gestión del desarrollo:

| Rama | Propósito |
|------|------------|
| `main` | Versión estable del proyecto (releases). |
| `develop` | Integración continua de notebooks y pruebas. |
| `feature/notebook1_colombiatic` | Desarrollo del notebook de extracción ColombiaTIC. |
| `feature/notebook2_ookla` | Procesamiento de datos Ookla. |
| `feature/notebook3_inctic` | Cálculo e interpretación del INCTIC. |

Los cambios se integran mediante **Pull Requests**, asegurando control y trazabilidad de cada avance.

---

## 🧮 Tecnologías Utilizadas

- **Python 3.12**
- **Pandas, NumPy, Matplotlib, DuckDB**
- **Google Colab**
- **Git y GitHub (GitFlow)**
- **nbformat y nbconvert** para compatibilidad de notebooks
- **ReportLab y Plotly** para generación de informes y visualizaciones

---

## 🚀 Ejecución del Proyecto

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/josvaldes/trabajoGradoMCD.git

