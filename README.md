## **Proyecto Individual** - 02-Siniestros Viales en CABA con víctimas fatales -(2016-2021) 

## **Introducción**⚠️ 🚧

Este proyecto se realizó simulando ser un Data Analist de una consultora; y tiene como finalidad la elaboración de un análisis de datos solicitado por el `Observatorio de Movilidad y Seguridad Vial (OMSV)`, bajo la órbita de la Secretaría de Transporte del Gobierno de la Ciudad Autónoma de Buenos Aires (CABA).

El Objetivo del proyecto es lograr información que permita la toma de decisiones, de manera fundada, a quienes corresponda; a fin de lograr la prevención, el aumento de la seguridad vial y  disminución de siniestros viales con víctimas fatales en la Ciudad de Buenos Aires.

Las tasas de mortalidad relacionadas con siniestros viales suelen ser un indicador crítico de la seguridad vial en una región. Estas tasas se calculan, generalmente, como el número de muertes por cada cierto número de habitantes o por cada cierta cantidad de vehículos registrados. Reducir estas tasas es un objetivo clave para mejorar la seguridad vial y proteger la vida de las personas en la ciudad.

Para cumplir con ello, los datos iniciales que se utilizan son derivados de un dataset con información sobre homicidios de siniestros viales en la Ciudad de Buenos Aires, durante los años 2016-2021, que es de píblico acceso en la página oficial de CABA. 
Podemos acceder a ellos desde [Datos oficiales](https://data.buenosaires.gob.ar/dataset/victimas-siniestros-viales)

## **Contexto**⚠️ 🚧

Los siniestros viales, también conocidos como accidentes de tráfico o accidentes de tránsito, son eventos que involucran vehículos en las vías públicas y que pueden tener diversas causas, como colisiones entre automóviles, motocicletas, bicicletas o peatones, atropellos, choques con objetos fijos o caídas de vehículos. Estos incidentes pueden tener consecuencias que van desde daños materiales hasta lesiones graves o fatales para los involucrados.

En Argentina, cada año mueren cerca de 4.000 personas en siniestros viales. Aunque muchas jurisdicciones han logrado disminuir la cantidad de accidentes de tránsito, esta sigue siendo la principal causa de muertes violentas en el país. Los informes del Sistema Nacional de Información Criminal (SNIC), del Ministerio de Seguridad de la Nación, revelan que entre 2018 y 2022 se registraron 19.630 muertes en siniestros viales en todo el país. Estas cifras equivalen a 11 personas por día que resultaron víctimas fatales por accidentes de tránsito.

Buenos Aires es la capital y ciudad más poblada de la República Argentina. La superficie de la Ciudad es algo superior a los 200 km2 y su perímetro, 60 km.  Los habitantes que residen en ella, están distribuidos en barrios que, desde el punto de vista político-administrativo, se agrupan en quince comunas. La densidad de la población es de más de 15.000 habitantes por kilómetro cuadrado. Las zonas centro y norte son los espacios territoriales más densamente poblados.[Página de la ciudad](https://buenosaires.gob.ar/laciudad/ciudad#:~:text=La%20densidad%20de%20la%20poblaci%C3%B3n,espacios%20territoriales%20m%C3%A1s%20densamente%20poblados.)
La población de la ciudad, según el Censo de 2022 es de 3 120 612 habitantes.[Indec](https://www.indec.gob.ar/ftp/cuadros/poblacion/cnphv2022_resultados_provisionales.pdf)
Solo en 2022, se contabilizaron 3.828 muertes fatales en este tipo de hechos. Los expertos en la materia indican que en Argentina es dos o tres veces más alta la probabilidad de que una persona muera en un siniestro vial que en un hecho de inseguridad delictiva.

 Por todo ello, el estudio del problema para la prevención y disminución de Siniestros viales es escencialmente importante para las autoridades.

## **Desarrollo**⚠️ 🚧

### Datos⛔

Para este proyecto se trabajó con la **Bases de Víctimas Fatales en Siniestros Viales** que se encuentra en formato de Excel y contiene dos pestañas de datos:

 * **HECHOS**: que contiene una fila de hecho con id único y las variables temporales, espaciales y participantes asociadas al mismo.

 * **VICTIMAS**: contiene una fila por cada víctima de los hechos y las variables edad, sexo y modo de desplazamiento asociadas a cada víctima. Se vincula a los HECHOS mediante el id del hecho.
En este [documento](NOTAS_HOMICIDIOS_SINIESTRO_VIAL.pdf) se detallan todas las definiciones manejadas en los datos y en el desarrollo de este proyecto. Por otra parte, en este [link](https://data.buenosaires.gob.ar/dataset/victimas-siniestros-viales) se encuentran los datos utilizados en el análisis.


- Proceso de ETL (Extracción, limpieza y carga de datos) realiza la extracción y limpieza de los datos de los conjuntos de datos HECHOS y VICTIMAS. Este procedimiento se lleva a cabo mediante el uso de Pandas y Jupyter Notebook. Para acceder al código correspondiente, puedes consultar el archivo ETL.ipynb. Durante este proceso, se eliminan valores nulos y duplicados, se aplican transformaciones necesarias como cambios en los tipos de datos, eliminación de columnas no requeridas, y se unen las tablas resultantes en un archivo denominado siniestros_limpio_2.csv. Puedes encontrar este archivo aquí.

- Proceso de EDA (Análisis Exploratorio de los datos): Una vez que los datos han sido depurados, se procede a realizar un análisis exploratorio para examinar las relaciones entre las variables numéricas y categóricas en los conjuntos de datos. Además, se busca identificar la presencia de outliers o anomalías, que no necesariamente son errores. Este proceso se lleva a cabo mediante el uso del archivo EDA.ipynb. El objetivo es descubrir patrones y conocimientos que puedan ser útiles en análisis posteriores.

### Análisis de los datos⛔

- Se analizan las variables numéricas del dataset su correlación por medio de una matriz, donde se encuentra una relación positiva entre las variables `Edad`y `Hora`
- La máyoria de los siniestros resultan con una víctima fatal, rara vez involucran 3 víctimas.
  
# -`Análisis Temporal:` 

En el transcurso de los años, los accidentes con víctimas fatales muestran: para el período 2016-2018 una tendencia alta y estacionaria, que luego se convierte en bajista (teniendo en cuenta el comienzo de la Pandemia por COVID19 durante 2020).

![reporte_temporal](img\reporte_temporal.png)

Los horarios críticos de los siniestros viales están relacionados con los momentos del ingreso a la jornada laboral (5-9h), el momento del almuerzo (12-14h) y la salida del trabajo (17-18h). Mientras que los fines de semana están relacionados con las salidas nocturnas (4-7h).
Edad de las víctimas : La distribución del rango etario de víctimas, resulta para los `Masculinos` entre 20 y 40 años; mientras que para los `Femeninos` entre 40, 60 y 80 años.

![reporte_temporal](img\hora_sexo.png)




# -`Análisis Demográfico y Geográfico:`

![geográfico](img\geo.png)

![Tgeo](img\tipo_calle.png)

Los siniestros se producen en 62% de los casos en el tipo de calle `Avenida` y en el 82% de los casos se corresponden con un Cruce entre calles. Lo que resulta un patrón que se repite a lo largo de los años.
Mientras que las comunas con mas siniestros son: (1-4-9-8)

# -`Análisis Participativo:`

Para el análisis de las `Victimas`, que en momento del accidente resultaban mayormente en el **Rol** de Conductor o Peatón; y el siniestro se produce en la mayoría de los casos en Motos y luego como Peaton.

![Tgeo](img\victimas_tipo.png)


### Indicadores de Rendimiento Clave KPI⛔

# `KPI Propuestos`

 - **Reducir en un 10% la tasa de homicidios en siniestros viales de los últimos seis meses, en CABA, en comparación con la tasa de homicidios en siniestros viales del semestre anterior**

Se define la tasa de homicidios en siniestros viales como el número de víctimas fatales en accidentes de tránsito por cada 100,000 habitantes en un área geográfica durante un período de tiempo específico. Su fórmula es: (Número de homicidios en siniestros viales / Población total) * 100,000

Número de Homicidios de Siniestros = Tomando la variable `Num víctimas` del dataset
Población Total = Tomada del Censo 2022. (Fuente:INDEC)



 - **Reducir en un 7% la cantidad de accidentes mortales de motociclistas en el último año, en CABA, respecto al año anterior**

Se define la cantidad de accidentes mortales de motociclistas en siniestros viales como el número absoluto de accidentes fatales en los que estuvieron involucradas víctimas que viajaban en moto en un determinado periodo temporal. Su fórmula para medir la evolución de los accidentes mortales con víctimas en moto es: (Número de accidentes mortales con víctimas en moto en el año anterior - Número de accidentes mortales con víctimas en moto en el año actual) / (Número de accidentes mortales con víctimas en moto en el año anterior) * 100

Cantidad de Accidentes Mortales en Moto = Tomando la variable `Victima` que se iguale a el campo [MOTO] del dataset 



 - **Reducir en un 10% la cantidad de accidentes con víctimas fatales de peatones en el último año, en CABA, respecto al año anterior.**

Se define la cantidad de accidentes mortales de peatones en siniestros viales como el número absoluto de accidentes fatales en los que estuvieron involucradas víctimas que viajaban en moto en un determinado periodo temporal. Su fórmula para medir la evolución de los accidentes mortales con víctimas peaton es: (Número de accidentes mortales con víctimas peaton en el año anterior - Número de accidentes mortales con víctimas peaton en el año actual) / (Número de accidentes mortales con víctimas peaton en el año anterior) * 100

Cantidad de Accidentes Mortales Peaton = Tomando la variable `Victima` que se iguale a el campo [PEATON] del dataset 



![Indicadores](img\kpi.png)


## **Conclusiones**⚠️ 🚧

A partir del análisis exahustivo de los datos y su posterior visualización a través del dashboard en PowerBi; se concluye que las víctimas fatales por siniestros de tránsito entre los años 2016 a 2021 fueron 717 personas.
Que la franja horaria de mayor problemática es la del ingreso laboral (5-9h), la del almuerzo (12-14h)y la del regreso a casa(17-18h); aunque durante los fines de semana (Sábado y Domingo), los accidentes se manifiestan en los horarios de salidas nocturnas (3-7h).
Las víctimas son en un 76% Masculinas, y sus edades entre el rango etario de 20-40 años.
Además en los siniestros de Masculinos los mayores casos se dan en su rol como Conductor.
Los tipos de vehículos más frecuentes con Víctimas son las Motos y luego los Peatones; mientras que para los Acusados los vehículos más frecuentes son Autos, Colectivos y cargas.
En cuanto a el lugar donde se producen los siniestros, las Avenidas a lo largo de los años han sido los espacios de mayor cantidad de siniestros; y en Cruce mayor a las calles. 
Se observo un patrón en relación con la variable Edad, Hora y Sexo. Donde los Masculinos de entre 20 a 40 años y en los horarios de entrada y salida laboral o para el caso de los fines de semana en horas de salidas nocturnas.

Asi se concluye que deberían mejorarse las señales y controles en las Avenidas sobre todo en las comunas 1 y 4 de CABA. Que podrían generarse campañas de prevención dirigidas a los Masculinos de entre 20 y 40 años, asi tambien como a motociclistas.

# `[MARIANO POPOV DATA PT-05]`