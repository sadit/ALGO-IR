---
title: Búsqueda sobre listas ordenadas
lang: es-MX

...


# Objetivo

El alumno aprenderá a implementar, utilizar y caracterizar el desempeo de algoritmos peor caso y adaptativos para búsqueda.

# Introducción

Esta unidad esta dedicada a la implementación y análisis de algoritmos de búsqueda sobre arreglos ordenados, esto es que presentan un orden total. Un arreglo es una estructura lineal de elementos contiguos en memoría donde la posición es importante. En esta unidad se estudian algoritmos que para localizar elementos que cumplan con predicados simples de orden. Como restricción adicional, se limita la duplicidad de elementos en los arreglos, esto sin reducir la generalidad de los algoritmos estudiados. Para cualquier tripleta de elementos $a, b, c$ en el a arreglo se cumple lo siguiente:

- reflexividad: $a \le a$.
- transitividad: $a \le b$ y $b \le c$ entonces $a \le c$.
- anti-simetría: $a \leq b $ y $b \leq a $ entonces $a = b$.
- completitud: $a \leq b $ o $b \leq a $.

Note que dada la condición de arreglo consecutivo en memoria, para dos elementos $u_i$ y $u_j$, donde $i$ y $j$ son posiciones:
- $u_i < u_j \iff i < j$; note que el comparador es estricto.
- $u_i = u_j \iff i = j$.

Los algoritmos tomarán ventaja de este hecho para localizar de manera precisa y eficiente elementos deseados, descritos mediante los mismos operadores.


## Listas ordenadas
En esta unidad se aborda la búsqueda en arreglos ordenados, y abusando del término, muchas veces les llamaremos _listas ordenadas_. Recuerde que a lo largo de este curso, esta será nuestra representación para conjuntos.

En la literatura es común que se aborde el tema con un modelo de costo basado en comparaciones, esto es, cada comparación $\le$ provoca costo constante $O(1)$. Este curso no es la excepción.
La comparación como unidad de costo es un excelente factorizador de las operaciones satelitales en los algoritmos de búsqueda; esto debería quedar claro una vez que se comprendan los algoritmos.

Utilizaremos como base el artículo [@Bentley76], que es de lectura forzosa. Nos apoyaremos en una serie de lecturas adicionales para comprender y madurar el concepto.

# Material audio-visual
En el siguiente video se adentraran en diferentes estrategías de búsqueda, notoriamente aquellas que llamaremos oportunistas o adaptables (adaptative). Estas técnicas nos permitirán tomar provecho de instancias sencillas de problemas e incrementar el desempeño en ese tipo de instancias.

Tenga en cuenta que, honrando la literatura, usaremos de forma indiscriminada listas ordenadas como sinónimo de arreglos ordenados.

[Algoritmos de búsqueda](https://www.youtube.com/watch?v=VZHlcPPKW5A")

# Actividades

## Actividad 0 [sin entrega]

Realizar las actividades de lectura y comprensión, apoyosé en el video de esta unidad. De preferencia realice los ejercicios de las secciones relacionadas.

- El artículo sobre búsqueda no acotada, como representativo sobre búsqueda adaptativa [@Bentley76].
- Cap. 12 de [@Sedgewick98], en partícular Sec. 12.3 y 12.4.
- Cap. 6 de [@Knuth98], en partícular Sec. 6.1 y 6.2.
- El artículo sobre búsqueda adaptativa secuencial [@Bentley85].
- Recuerde la referencia básica para la notación y conceptos es [@Cormen01].

## Actividad 1 [con reporte]

Realice y reporte el siguiente experimento:
 
 - Use el archivo `listas-posteo-100.json`, contiene las 100 listas de posteo más frecuentes, se encuentran en formato JSON.
 - Utilice las listas (sin el término asociado).
 - Los usuarios de Julia deberán asegurar que los tipos de los arreglos es `Int` y no `Any` para asegurar la velocidad adecuada
 - Seleccione 1000 identificadores de documentos al azar, entre $1$ y $n$, recuerde que $n=50,000$.
 - Grafique el tiempo promedio de _buscar_ los 1000 identificadores en todas las listas (un solo número que represente las $100\times 1000$ búsquedas). Nota: lo que determinará al buscar es la _posición de inserción_ que se define como el lugar donde debería estar el identificador si se encontrara en la lista.
 - Los algoritmos que caracterizará son los siguientes (nombres con referencia a [@Bentley76]):
      - Búsqueda binaria acotada
      - Búsqueda secuencial $B_0$
      - Búsqueda no acotada $B_1$
      - Búsqueda no acotada $B_2$

   - *Importante: Tal vez deba repetir varias veces cada búsqueda si los tiempos son muy pequeños.*
 - Bosqueje en pseudo-código la implementación de la búsqueda casí optima $B_k$

  
### Entregable
El reporte deberá ser en formato notebook y el PDF del mismo notebook. El notebook debe contener las implementaciones de los algoritmos solicitados. Recuerde que el reporte debe llevar claramente su nombre, debe incluir una introducción, la explicación de los experimentos realizados, las observaciones, conclusiones y bibliografía.

Nota: En las implementaciones podrá usar comparación $<, \leq$, o incluso $cmp \rightarrow \{-1, 0, 1\}$, teniendo en cuenta que $cmp$ es común en lenguajes modernos, solo debe indicarlo.


## Actividad 2 [sin entrega]
Revisar el notebook `crear-indice-invertido.ipynb` para los detalles de como se generó la lista de posteo. Usted puede crear nuevas listas de posteo si lo desea usando los conjuntos de datos disponibles (listados en dicho notebook), y a su vez utilizarlas en las actividades de este Unidad. Solo deberá indicarlo; recuerde que los números de documentos y tamaño de vocabulario cambiarán.


## Leyendo las listas de posteo

Usted no necesita generar las listas de posteo, solo leer las que se le han proporcionado en el archivo `listas-posteo-100.json` que corresponden a las 100 listas de posteo más pobladas (100 terminos más usados en el conjunto de datos).
En el archivo `listas-posteo-100.json` , cada linea un JSON valido, donde se tiene el término y la lista de posteo.

- En el notebook `lectura-listas-de-posteo.ipynb` se muestra como se leen las listas de posteo desde Julia


## Referencias
- [@Knuth98]: Donald E. Knuth. 1998. The Art of Computer Programming, Volume 3: (2nd Ed.) Sorting and Searching. Addison Wesley Longman Publishing Co., Inc., Redwood City, CA, USA.
- [@Bentley76]: Jon Louis Bentley, Andrew Chi-Chih Yao. An almost optimal algorithm for unbounded searching. Information Processing Letters, Volume 5, Issue 3, 1976, Pages 82-87. ISSN 0020-0190. https://doi.org/10.1016/0020-0190(76)90071-5.
- [@Bentley85]: Bentley, J.L., McGeoch, C.C. Amortized analyses of self-organizing sequential search heuristics. (1985) Communications of the ACM, 28 (4), pp. 404-411. Doi: 10.1145/3341.3349. 
- [@Cormen01]: Cormen et. al. Introduction to algorithms. MIT press 2001. 2nd edition.
- [@Sedgewick98]: Robert Sedgewick. Algorithms in C++ - Parts 1-4: Fundamentals, Data Structures, Sorting, Searching. Addison-Wesley-Longman, 1998. 3rd Edition.

