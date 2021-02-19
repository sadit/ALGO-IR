---
title: Algoritmos de ordenamiento
lang: es-MX

...




## Objetivo
Implementar, utilizar y caracterizar el desempeño de algoritmos peor caso y adaptativos para ordenamiento de arreglos.

# Introducción

En este tema se aborda el ordenamiento basado en comparación, esto es, existe una función $\leq$ tal que para dos elementos $a$ y $b$ se cumplen las siguientes propiedades:

- si $u \leq v$ y $v \leq w$ entonces $u \leq w$ (transitividad)
- tricotomia:
  - si $u \leq v$ y $v \leq u$ entonces $u = v$ (antisimetria)
  - en otro caso, $u \leq v$ o $v \leq u$

La idea es entonces, dado un arreglo $A[1, n] = a_1, a_2, \cdots, a_n$ obtener una permutación $\pi$ tal que
$a_{\pi(1)} \leq a_{\pi(2)} \leq \cdots \leq a_{\pi(n)}$. Si se asegura que en el arreglo ordenado se preserven el orden original de los indices cuando $u = v$, entonces se tiene un ordenamiento estable.

En terminos prácticos, la idea es reorganizar $A$, mediante el cálculo implicito de $\pi$, de tal forma que después de terminar el proceso de ordenamiento se obtenga que $A$ esta ordenado, i.e., $a_i \leq a_{i+1}$. En sistemas reales, el alojar memoria para realizar el ordenamiento implica costos adicionales, y es por esto que que modificar directamente $A$ es una buena opción. Utilizar $\pi$ de manera explicita solo es necesario cuando no es posible modificar $A$. También es muy común utilizar datos _satélite_ asociados con los valores a comparar, de esta manera es posible ordenar diversos tipos de datos. 


En esta unidad se tendrá atención especial a aquellos algoritmos oportunistas que son capaces de obtener ventaja en instancias sencillas.

## Lecturas
Las lecturas de este tema corresponden al capítulo 5 de [@Knuth98], en específico 5.2 _Internal sorting_. También se recomienda leer y comprender la parte II de [@Cormen01], que corresponde a _Sorting and order statistics_, en partícular Cap. 6 y 7, así como el Cap. 8.1. El artículo de wikipedia [@SortWiki] también puede ser consultado con la idea de encontrar una explicación rapida de los algoritmos. 

Como muchos sabrán, pocos algoritmos son mejores en la práctica que quicksort. En [@Loeser74] se detalla una serie de experimentos donde se compara quicksort contra otros algoritmos relacionados; por lo que es una lectura recomendable.

La parte adaptable, esto es para algoritmos _oportunistas_ que toman ventaja de instancias simples, esta cubierta por el artículo [@Estivill90], en especial, es muy necesario comprender las secciones 1.1 y 1.2, el resto del artículo debe ser leído aunque no invierta mucho tiempo en comprender las pruebas expuestas si no le son claras. En especial, en las secciones indicadas se establecen las medidas de desorden contra las cuales se mide la complejidad. En [@Cook80] realiza una comparación del desempeño de varios algoritmos para ordenamiento de listas casi ordenadas, esto es, en cierto sentido donde los algoritmos adaptables tienen sentido. Este artículo es anterior a [@Estivill90] pero tiene experimentos que simplifican el entendimiento de los temas.


## Material audio-visual sobre algoritmos de ordenamiento

<iframe width="560" height="315" src="https://www.youtube.com/embed/F9jh0IJsg1w" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


## Actividad 

1. Realizar las actividades de lectura y comprensión.
  - De preferencia realice los ejercicios de los capítulos y secciones relacionadas.
2. Implemente los algoritmos, bubble sort, insertion sort, merge-sort y quick-sort. Expliquelos.
3. Use el archivo `listas-posteo-100.json`, generado en la actividad del Tema 3.
  - Los usuarios de Julia deberán asegurar que los tipos de los arreglos es `Int` y no `Any` para asegurar la velocidad adecuada.  
  - Las listas de posteo serán los arreglos que se utilizaran para realizar las actividades.
3. Reporte el siguiente experimento.
  - Sea $p$ una proporción entre las siguientes: $0.01, 0.03, 0.10, 0.30$.
  - Perturbe cada arreglo $A$ haciendo $\lfloor p \times n \rfloor$ intercambios de dos elementos aletorios de cada lista, i.e., cada intercambio consiste en seleccionar dos indices __aleatorios__ entre 1 y $n$, donde $n$ es el tamaño de cada lista. El intercambio consiste en $A[i] \leftrightarrow A[j]$ para dos indices $i,j$. Asegurese que los rangos son validos para cada índice.
  - Ordene con los algoritmos implementados para cada valor de $p$.
  - Grafique el número de comparaciones y el tiempo real necesario para cada algoritmo sobre las 100 listas, para cada $p$.
  - __Nota 1: Recuerde copiar o cargar cada lista para evitar ordenar conjuntos completamente ordenados.__
  - Nota 2: Tal vez deba repetir varias veces cada búsqueda si los tiempos son muy pequeños.
4. Opcionales. Resuelva estos problemas para añadir puntos adicionales a su calificación global. La calificación de estos puntos es discrecional al profesor.
   - Al final de este notebook hay una implementación del algoritmo de búsqueda en un índice invertido; ésta hace uso del método `sort!`. Reemplacelo por la mejor de sus implementaciones y pruebe si obtiene un mejor desempeño. Muestre el desempeño resolviendo una gran cantidad de búsquedas.
   - Discuta el problema que esta resolviendo la variable `res` en las funciones `search` y `union!`. Explique que hace, diga cuales son las operaciones y propiedades.

El reporte deberá ser en formato notebook y con el PDF del mismo notebook. Para generar el PDF primero guarde el notebook como HTML y luego genere el PDF renderizando e imprimiendo el HTML con su navegador. En lugar de imprimir, seleccione guardar como PDF.

El notebook debe contener las implementaciones de los algoritmos de ordenamiento indicados. Recuerde que el reporte debe llevar claramente su nombre, debe incluir una introducción, la explicación de las implementaciones y de los experimentos realizados, las observaciones y conclusiones; adicionalmente, añada las soluciones a las actividades opcionales si así lo desea.


## Ver más
- [SphinxSearch](http://sphinxsearch.com/); biblioteca para búsqueda escrita en C++, tiene conexiones con algunos motores de bases de datos relacionales.
- [ElasticSearch](https://www.elastic.co/es/); biblioteca popular, adaptada como NoSQL.
- [Lucene](https://lucene.apache.org/); biblioteca de la fundación apache, núcleo de diversas máquinas de búsqueda.
- [TextSearch.jl](https://github.com/sadit/TextSearch.jl); implementación propia, con menos opciones que las anteriores, pero con la posibilidad de realizar modificaciones más profundas en sus partes.

## Referencias #
- [@Knuth98]: Donald E. Knuth. 1998. The Art of Computer Programming, Volume 3: (2nd Ed.) Sorting and Searching. Addison Wesley Longman Publishing Co., Inc., Redwood City, CA, USA.
- [@Cormen01]: Cormen et. al. Introduction to algorithms. MIT press 2001. 2nd edition.
- [@Sedgewick98]: Robert Sedgewick. Algorithms in C++ - Parts 1-4: Fundamentals, Data Structures, Sorting, Searching. Addison-Wesley-Longman, 1998. 3rd Edition.
- [@Estivill92] Vladimir Estivill-Castro, Deric Wood. A Survey of Adaptive Sorting Algorithms. ACM Computmg Surveys, Vol. 24, No. 4, December 1992.
- [@Cook80] Curtis R. Cook, Do Jin Kim. Best Sorting Algorithm for Nearly Sorted Lists. Commun. ACM. Vol 23, number 11.
- [@Loeser74]: Loeser, Rudolf. 1974. Some Performance Tests of "Quicksort" and Descendants. Commun. ACM. Vol 17, number 3. pp 143-152. http://doi.acm.org/10.1145/360860.360870}.
- [@SortWiki]: https://en.wikipedia.org/wiki/Sorting_algorithm
