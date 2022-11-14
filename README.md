# w4-ETL-Project

![mv](https://github.com/AaronNebreda/w4-ETL-Project/blob/main/img/Marvel.png)


## Objetivo

El objetivo principal de este proyecto es realizar un proceso ETL:

   1. ⛏  Extración. 
   2. ⚙  Transforamción.
   3. 💾 Carga de datos.
   
Requerimientos: extraer la información de 3 fuentes diferentes. 
                utilizar dos métodos de extracción distintos.
                

Caso práctico: 

Realizar un proceso ETL sobre las péliculas del Universo Cinematográfico de Marvel (UCM).

Extraer un listado de todas las películas, una relación de actores que participan y personajes que representan,
y un listado de protagonizados por los personajes principales.

manipular esta infromación para limpiar y estandarizar los datos. Y preparar las tablas para generar la estructura correcta para una base de datos.
              
Crear una base de datos y cargar la información.              
               


##⛏ Extración.

 
Descarga de un listado de todas las películas del UCM, con información asociada a cada película. (fase, fecha de estreno, puntuaciones, datos sobre recaudación)
Esta infromación se extrajo en formato csv del repostirotio de Dataset de https://www.kaggle.com/


Extracción referente a cada película de la web IMDB (https://www.imdb.com/) mediante técnica de scrapeo con el módulo selenium.
Se extrajo para cada película la puntuación sobre 10, un link al trailer, y el reparto y personaje que representaba.



   
