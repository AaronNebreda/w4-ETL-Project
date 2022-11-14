# w4-ETL-Project

![mv](https://github.com/AaronNebreda/w4-ETL-Project/blob/main/img/Marvel.png)


## Objetivo

El objetivo principal de este proyecto es realizar un proceso ETL:

   1. Extración.
   2. Transforamción.
   3. Cargar de datos.
   
Como requisito hay que extraer la información de 3 fuentes diferentes y utilizar dos métodos de extracción distintos.


## Resumen

Se realiza un proceso ETL sobre las péliculas del Universo Cinematográfico de Marvel (UCM).

La información extraida es:

   - Un listado de todas las películas
   
   - La relación de actores y personajes que participan en ellas.
   
   - Un listado de comics que protagonizan los personajes principales.
   
Posteriromente se manipuló esta infromación para limpiar y estandarizar los datos. Y preparar las tablas para generar la estructura correcta para una base dedatos.

Por último, se crea la base de datos y se carga la información.


## Extración.

 
   - Descarga de un listado de todas las películas del UCM, con información asociada a cada película.
Esta infromación se extrajo en formato csv del repostirotio de Dataset de https://www.kaggle.com/


- Extracción referente a cada película de la web IMDB (https://www.imdb.com/) mediante técnica de scrapeo con selenium.
Se extrajo para cada película la puntuación sobre 10, un link al trailer, y el reparto y personaje que representaba.



   
