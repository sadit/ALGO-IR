---
title: Algoritmos para codificación de enteros
lang: es-MX

...


## Objetivos

- Crear algoritmos de codificación de enteros y su relación con algoritmos de búsqueda
- Crear algoritmos de compresión de permutaciones y su relación con algoritmos de ordenamiento
- Optimización del espacio utilizado de índices invertidos

# Introducción
La codificación de enteros es una área intimamente relacionada con los algoritmos de búsqueda. En este bloque, se estudiará cómo variantes sobre los algoritmos de búsqueda generan codificaciones de enteros eficientes. Así mismo, se verá como la compresión de permutaciones esta relacionada con los algoritmos de ordenamiento.
 
 
# Material audio-visual

### Codificación - parte 1

<iframe width="560" height="315" src="https://www.youtube.com/embed/FB2b3Vi7sgA" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen=""></iframe>

### Codificación - parte 2
<iframe width="560" height="315" src="https://www.youtube.com/embed/-Qh3vJ9802I" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen=""></iframe>

### Codificación - parte 3
<iframe width="560" height="315" src="https://www.youtube.com/embed/EyTr06FrrPc" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen=""></iframe>
 
# Actividades

Considere las listas de posteo de un índice invertido. Como podrían ser aquellas del archivo `listas-posteo-100.json`.

- Representar cada lista de posteo con las diferencias entre entradas contiguas.
- Comprimir las diferencias mediante Elias-$\gamma$, Elias-$\delta$, y las codificaciones inducidas por los algoritmos de búsqueda $B_1$ y $B_2$ (búsqueda exponencial en $2^i$ y $2^2^i$)

Reporte:
- Tiempos de compresión y decompresión
- Razón entre el tamaño comprimido y sin comprimir (_compression ratio_).

Para los experimentos utilizará los siguientes tres tipos de datos:

- REAL: Datos reales, puede usar `listas-posteo-100.json` o puede generarla (vea Unidad 2).
- SIN64: Datos sintéticos con diferencias aleatorias entre 1 y 64, $n = 10^7$
- SIN1024: Datos sintéticos con diferencias aleatorias entre 1 y 1024, $n = 10^7$
- Las comparaciones deberán realizarse mediante figuras y tablas que resuman la información.

!!!!! ESTA NO ES LA ULTIMA VERSION !!!!
Descargue el archivo del Elías 1975 que se encuentra en Materiales del tema 5 para realizar el reporte solicitado.

Los videos que aparecen en Material de Apoyo permitirán entender mejor los contenidos del artículo y realizar la actividad.

El reporte deberá contener:

- Resumen
- Introducción (debe incluir una clara motivación)
- Planteamiento del problema
- Algoritmos y análisis
- Conclusiones y perspectivas
- Referencias