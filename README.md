# 📡 Proyecto de Validación de Datos de Conectividad en Colombia  
### **Trabajo de Grado – Maestría en Explotación de Datos y Gestión del Conocimiento**  
**Universidad Austral de Argentina**

---

## 📘 Descripción General

Este proyecto implementa un proceso integral de **extracción, limpieza, armonización y validación cruzada** de dos fuentes públicas de información sobre la conectividad de Internet en Colombia:

- **ColombiaTIC (Ministerio TIC):**  
  Datos administrativos reportados por los operadores de telecomunicaciones, que reflejan las velocidades comerciales contratadas por los usuarios.

- **Ookla Speedtest Open Data:**  
  Datos empíricos obtenidos mediante pruebas voluntarias realizadas por usuarios finales, representando la velocidad real experimentada en cada territorio.

El objetivo principal es comparar ambas fuentes y diseñar un **Índice Nacional de Coherencia TIC (INCTIC)** que mida el grado de correspondencia entre lo reportado oficialmente y lo observado empíricamente.

Este proyecto constituye el soporte metodológico y técnico del **Trabajo Final de Grado – Versión 1.2**.

---

## 🏗 Arquitectura General del Proyecto

El flujo se compone de **tres notebooks principales**, organizados de acuerdo con GitFlow:

| Notebook | Propósito | Rama asociada |
|----------|-----------|----------------|
| `scrapingColombiaTicFinal3.ipynb` | Extracción y consolidación de boletines de ColombiaTIC | `feature/notebook1_colombiatic` |
| `scrapingOokla12_fixed.ipynb` | Descarga, filtrado y georreferenciación de datos Ookla | `feature/notebook2_ookla` |
| `03_cruce_ookla_colombiaticV1_2.ipynb` | Cruce territorial, validación cruzada, cálculo del INCTIC y análisis complementario (versión 1.2) | `feature/notebook3_inctic` |

Todos los datos son consolidados en bases DuckDB, optimizadas para la exploración analítica en Python.

---

## 🧠 Actualización Metodológica – Versión 1.2

En atención a la recomendación del jurado académico, el Notebook 03 fue ampliado para incluir:

### ✔ 1. **Análisis del INCTIC crudo**  
- Histograma sin filtrado  
- Identificación de casos extremos  
- Justificación de la necesidad del pipeline de depuración  

### ✔ 2. **Análisis del INCTIC filtrado**  
- Exclusión de casos con velocidad oficial 0 Mbps  
- Remoción de outliers usando percentil 95  
- Comparación entre versión cruda y depurada

### ✔ 3. **Selección automática de municipios representativos**  
El notebook identifica 3 casos representativos:

- **Coherencia alta:** INCTIC ≈ 1  
- **Coherencia baja:** INCTIC < 0.5  
- **Coherencia atípica:** INCTIC > 2

Estos casos se visualizan mediante gráficos comparando velocidades TIC vs Ookla.

### ✔ 4. **Documento final del trabajo de grado (PDF versión 1.2)**  
Disponible en:

---

Se incluyen los ajustes conceptuales, metodológicos y analíticos acordados con el jurado.


**Flujo GitFlow del Proyecto **

| Rama                            | Función                                              |
| ------------------------------- | ---------------------------------------------------- |
| `main`                          | Contiene releases estables del proyecto              |
| `develop`                       | Integra nuevas funcionalidades antes del release     |
| `feature/notebook1_colombiatic` | Desarrollo del ETL de ColombiaTIC                    |
| `feature/notebook2_ookla`       | Desarrollo del procesamiento de datos Ookla          |
| `feature/notebook3_inctic`      | Desarrollo del INCTIC                                |
| `feature/analisis_casos_inctic` | Desarrollo del análisis complementario (versión 1.2) |


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

## 📂 Estructura del Repositorio

```plaintext
trabajoGradoMCD/
│
├── Codigo/
│   ├── notebooks/                           # Notebooks del proyecto
│   ├── data/                                # Tablas DuckDB y archivos procesados
│   ├── resultados/                          # Archivos csv con salidas de los procesos
│   ├── reporteColombiaTic/                  # Archivos de control
│   ├── deprecados/                          # Versiones anteriores de notebooks
├── Documentacion/                           # PDF final, figuras, anexos
│
├── README.md
├── .gitignore
└── .gitattributes

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

---
👤 Autor

José Valdés
Proyecto desarrollado como trabajo final de la Maestría en Explotación de Datos y Gestión del Conocimiento – Universidad Austral, Argentina.

