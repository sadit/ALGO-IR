---
title: Análisis de la eficiencia de un algoritmo
lang: es-MX

...


# Objetivo
Obtener los criterios básicos para el análisis, diseño e implementación de algoritos.

# Introducción
La presente unidad esta dedicada a los fundamentos de análisis de algoritmos. En particular se intentará que el concepto de modelo de cómputo se adopte, se conozca y maneje la notación asintótica. Es de vital importancia que se entienda su utilidad y el porque es importante para el análisis de algoritmos. También se mostrarán algunos de los ordenes de crecimiento más representativos, que nos permitirán comparar répidamente algoritmos que resuelvan una tarea dada, así como darnos una idea de los recursos de computo necesarios para ejecutarlos. Finalmente, como parte de esta unidad, se dará un repaso a las estructuras de datos y a los algoritmos asociados, que dado nuestro contexto, son fundamentales y deberán ser comprendidos a cabalidad.

# Modelos de cómputo y tipos de análisis

En los siguientes videos se introduce a los modelos de cómputo y se muestran diferentes tipos de análisis sobre algoritmos.


- [Análisis - parte 1](https://www.youtube.com/watch?v=uUZnpaoEQXs)
- [Análisis - parte 2](https://www.youtube.com/watch?v=CkvfliomNqk)
- [Análisis - parte 3](https://www.youtube.com/watch?v=zRtjk2X2aDE)
- [Ordenes de crecimiento](https://www.youtube.com/watch?v=mX7mZH0Dz8s)
- [Estructuras de datos básicas](https://www.youtube.com/watch?v=fNdtauZa7Mc)

# Actividades

## Actividad 0 [sin entrega]
Instrucciones:

Del libro "Introduction to algorithms" (ver bibliografía). Lee y resuelve los ejercicios de los capítulos 1, 2, 3, 4, 10 y 11.
Resuelva ejercicios de dichos capítulos para ganar intuición
Nota: En la Actividad 0 no hay entrega; use el Foro de dudas para discutir sus resultados y dudas.

## Actividad 1 [con reporte]

Instrucciones para la actividad (con entrega de reporte):

1. Utilizar el notebook de Jupyter para generar las siguientes comparaciones de ordenes de crecimiento (una figura por comparación, i.e., cinco figuras)

- $ O(1) ~vs~ O(\log n) $
- $ O(n) ~vs~ O(n \log n) $
- $ O(n^2) ~vs~ O(n^3) $
- $ a^n ~vs~ n! $
- $ n!  ~vs~ n^n $

Escoja los rangos adecuados para cada comparación. 


2. Haga una tabla donde simule tiempos de ejecución suponiendo que cada operación tiene un costo de 1 micro-segundo:

 - Suponga que cada uno de los ordenes de crecimiento anteriores es una expresión que describe el costo de un algoritmo teniendo en cuenta el tamaño de la entrada del algoritmo $ n $.
 - Use como los diferentes tamaños de entrada $n=100 $; $ n=1000 $; $ n=10000 $ y $ n=100000 $.
 - Note que para algunas fórmulas, los números pueden ser muy grandes (use el foro de dudas si llega a tener problemas)

3. Dentro del notebook añada un breve ensayo o reflexión sobre los costos de computo necesarios sobre algoritmos que pudieran tener ordenes de crecimiento como los mostrados.


### Entregable

Reporte en formato Jupyter que debe contener el código creado y los resultados obtenidos: las figuras generadas, la tabla de simulación. No olvide concluir su reporte con la reflexión solicitada.
Tenga en cuenta que los notebooks de Jupyter pueden alternar celdas del notebook con texto, código y resultados; además que el texto puede ser escrito en markdown.

No olvide estructurar su reporte, en particular el reporte debe cubrir los siguientes puntos:
- Título del reporte, su nombre.
- Introducción.
- Código cercano a la presentación de resultados.
- Figuras y comparación de los ordenes de crecimiento (instrucción 1). Explique los resultados obtenidos.
- Simulación de costo en formato de tabla (instrucción 2), explique los resultados obtenidos.
- Concluya con la reflexión (instrucción 3). La reflexión debe aboradar las comparaciones hechas y la simulación; también toque el tema de casos extremos y una $ n $ variable y asintóticamente muy grande.
- Bibliografía

*Archivos a entregar:* Notebook de Jupyter y el PDF del notebook (favor de generarlo mediante el mismo Jupyter, no en un procesador de texto, para esto se puede exportar a html con el navegador, y luego el html a PDF).

