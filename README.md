# w4-ETL-Project

![mv](https://github.com/AaronNebreda/w4-ETL-Project/blob/main/img/Marvel.png)


## Objetivo

El objetivo principal de este proyecto es realizar un **proceso ETL**:

   1. ⛏  Extración. 
   2. ⚙  Transformación.
   3. 💾 Carga de datos.
   
   
**Requerimientos:** 
    - extraer la información de 3 fuentes diferentes. 
    - utilizar dos métodos de extracción distintos.
                

**Caso práctico:**

Realizar un proceso ETL sobre las péliculas del Universo Cinematográfico de Marvel (UCM).

Extraer un listado de todas las películas, una relación de actores que participan y personajes que representan,
y un listado de comics para los personajes principales.

Manipular esta infromación para limpiar y estandarizar los datos. Y preparar las tablas para generar la estructura correcta para una base de datos.
              
Crear una base de datos y cargar la información.              
               


## ⛏ Extración.

 
Descarga de un listado de todas las películas del UCM, con información asociada a cada película. (fase, fecha de estreno, puntuaciones, datos sobre recaudación)
Esta infromación se extrajo en formato csv del repostirotio de Dataset de https://www.kaggle.com/


Extracción referente a cada película de la web IMDB (https://www.imdb.com/) mediante técnica de scrapeo con el módulo selenium.
Se extrajo para cada película la puntuación sobre 10, un link al trailer, y el reparto y personaje que representaba.


Navegar por la API de marvel (https://developer.marvel.com/), y con un listado de los personajes principales (obtenido de la informcón anterior), extraer un listado de comics que protagonizan estos personajes.



## ⚙ Transformación.


Limpiaza y manejo de los datos:

   - Eliminación de información no relevante de la tabla inicial.
   
   - Añadir información extraida del scraping de imdb (rating) en la tabal de películas.
   
   - Transformar tablas númericas.
   
   - Crear tablas con los datos extraidos del scrapeo y de la API de marvel.
   
   - Estandarizar nombres de actores y personajes.
   
   - Generar id en cada tabla que se establecerá como PK, y crear FK en las tabla que corresponde para generar las relaciones.  



## 💾 Carga de datos.


Una vez creadas todas las tablas en python se exportaron a una base de datos mySQL vacía.

Posteriomente se establecieron las relaciones entre tablas.


Consideraciones para crear la base de datos:

    Se dividió en dos tablas actores y personajes, ya que hay personajes que han sido representados por diferentes actores.
    Se creo una tabla intermedia para relacionar películas y actores, ya que se establecía como relación n:m

Aquí se muesta el diagrama E-R de la base de datos:

![er](https://github.com/AaronNebreda/w4-ETL-Project/blob/main/img/diagrama_EER.png)

   
### Recursos.

- scrap_imdb.ipynb  →  scraping web imdb

- api_marvel.ipynb  →  navegación API marvel

- clean.ipynb  →  limpieza de datos

- base_datos.ipynb  →  exportación de las tablas a la base de datos

- bd_relaciones.sql  →  generación de las relaciones entre tablas
   






   
