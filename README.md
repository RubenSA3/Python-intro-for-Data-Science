# 🏦 Mi Primer Proyecto de Predicción de Préstamos (MLOps)

Este es mi proyecto para la rama de MLOps. He creado un modelo que ayuda a decidir si un préstamo debería ser aprobado o no, basándose en los datos de los clientes.

## 📝 ¿De qué trata este proyecto?
La idea principal es usar la Inteligencia Artificial para analizar datos bancarios de forma automática. 
- **Mi objetivo:** Conseguir que el modelo aprenda a distinguir a los buenos pagadores de los que no lo son.
- **Resultado:** ¡He logrado un 95% de acierto (Accuracy)!

## 🛠️ ¿Qué herramientas he usado?
Para este trabajo he utilizado:
- **Python:** El lenguaje de programación.
- **Pandas y Scikit-Learn:** Para organizar los datos y crear el modelo ("Random Forest").
- **MLflow:** Herramienta para guardar cada prueba que hacía.
- **Docker:** Para que el proyecto se pueda ejecutar en cualquier ordenador sin problemas de instalación.

## 🚀 Cómo ver mis pruebas en MLflow
Si quieres ver todas las veces que entrené el modelo y cómo comparé los resultados:
1. Abre una terminal en esta carpeta.
2. Escribe: `py -m mlflow ui --port 5001`
3. Ve a tu navegador y entra en: `http://localhost:5001`

## 🐳 ¿Cómo funciona el Docker?
He creado un archivo llamado `Dockerfile`. Sirve para "empaquetar" todo el proyecto en una cajita (contenedor). 
- Para construir esa cajita: `docker build -t mi-modelo-prestamos .`
- Para ponerla en marcha: `docker run -p 5001:5001 mi-modelo-prestamos`

## 📂 Archivos importantes
- `loan_prediction.ipynb`: Aquí está todo mi código y las explicaciones de lo que he hecho.
- `requirements.txt`: Una lista cortita con las librerías que necesitas instalar.
- `data/`: Aquí están los archivos CSV con la información de los préstamos.