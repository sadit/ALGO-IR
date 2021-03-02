---
title: Algoritmos de ordenamiento
lang: es-MX

...




## Objetivo
Implementar, utilizar y caracterizar el desempeño de algoritmos peor caso y adaptativos para ordenamiento de arreglos.

# Introducción

En este tema se aborda el ordenamiento basado en comparación, esto es, existe una función $\leq$ tal que para dos elementos $a$ y $b$. Recuerde que se cumplen las siguientes propiedades:

- si $u \leq v$ y $v \leq w$ entonces $u \leq w$ (transitividad)
- tricotomia:
  - si $u \leq v$ y $v \leq u$ entonces $u = v$ (antisimetria)
  - en otro caso, $u \leq v$ o $v \leq u$

La idea es entonces, dado un arreglo $A[1, n] = a_1, a_2, \cdots, a_n$ obtener una permutación $\pi$ tal que
$a_{\pi(1)} \leq a_{\pi(2)} \leq \cdots \leq a_{\pi(n)}$. Si se asegura que en el arreglo ordenado se preserven el orden original de los indices cuando $u = v$, entonces se tiene un ordenamiento estable.

En terminos prácticos, la idea es reorganizar $A$, mediante el cálculo implicito de $\pi$, de tal forma que después de terminar el proceso de ordenamiento se obtenga que $A$ esta ordenado, i.e., $a_i \leq a_{i+1}$. En sistemas reales, el alojar memoria para realizar el ordenamiento implica costos adicionales, y es por esto que es común modificar directamente $A$.
Utilizar $\pi$ solo es necesario cuando no es posible modificar $A$. También es muy común utilizar datos _satélite_ asociados con los valores a comparar, de esta manera es posible ordenar diversos tipos de datos.

En esta unidad se tendrá atención especial a aquellos algoritmos oportunistas que son capaces de obtener ventaja en instancias sencillas.

## Lecturas
Las lecturas de este tema corresponden al capítulo 5 de [@Knuth98], en específico 5.2 _Internal sorting_. También se recomienda leer y comprender la parte II de [@Cormen01], que corresponde a _Sorting and order statistics_, en partícular Cap. 6 y 7, así como el Cap. 8.1. El artículo de wikipedia [@SortWiki] también puede ser consultado con la idea de encontrar una explicación rápida de los algoritmos.

En la práctica, pocos algoritmos son mejores que _quicksort_. En [@Loeser74] se detalla una serie de experimentos donde se compara quicksort contra otros algoritmos relacionados; por lo que es una lectura recomendable.

La parte adaptable, esto es para algoritmos _oportunistas_ que toman ventaja de instancias simples, esta cubierta por el artículo [@Estivill90]. En especial, es muy necesario comprender las secciones 1.1 y 1.2, el resto del artículo debe ser leído aunque no invierta mucho tiempo en comprender las pruebas expuestas si no le son claras. En especial, en las secciones indicadas se establecen las medidas de desorden contra las cuales se mide la complejidad.
En [@Cook80] realiza una comparación del desempeño de varios algoritmos para ordenamiento de listas casi ordenadas, esto es, en cierto sentido donde los algoritmos adaptables tienen sentido. Este artículo es anterior a [@Estivill90] pero tiene experimentos que simplifican el entendimiento de los temas.


## Material audio-visual sobre algoritmos de ordenamiento

<iframe width="560" height="315" src="https://www.youtube.com/embed/F9jh0IJsg1w" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


# Actividades

## Actividad 0 [sin entrega]

Realizar las actividades de lectura y comprensión.
 - De preferencia realice los ejercicios de los capítulos y secciones relacionadas.
    
## Actividad 1 [con reporte]
1. Implemente los algoritmos, bubble-sort, insertion-sort, merge-sort y quick-sort. Explíquelos.
2. Carge los archivos `unsorted-list-p=*.json`, los cuales corresponden al archivo `listas-posteo-100.json` perturbado en cierta proporción: $p=0.01, 0.03, 0.10, 0.30$. En el notebook `perturbar-listas.ipynb` se encuentran el procedimiento que se utilizó para la perturbación. Nota: puede usar sus propias listas de posteo perturbadas para la actividad siempre y cuando sean comparables en tamaño. Recuerde que la unidad anterior se dió un notebook con el código para crear índices invertidos y las listas de posteo.
3. Para cada archivo de listas desordenadas con cierta perturbación, realice el siguiente experimento:
  - Ordene con los algoritmos implementados para cada valor de $p$ con cada.
  - Grafique el número de comparaciones necesarias para ordenar las 100 listas.
  - Grafique el tiempo en segundos necesario para ordenar las 100 listas.

- Nota 1: Recuerde copiar o cargar cada lista para evitar ordenar conjuntos completamente ordenados.
- Nota 2: Repita varias veces las operaciones de ordenamiento, esto es muy importante sobre para la estabilidad de los tiempos en segundos (vea Nota 1).
- Nota 3: En las implementaciones podrá usar cualquier comparación que le convenga, i.e., $<, \leq$, $cmp \rightarrow \{-1, 0, 1\}$, etc.
- Nota 4: Tome en cuenta que varios lenguajes de programación (Python y Julia) hacen copias de los arreglos cuando se usa _slicing_, i.e., `arr[i:j]` creará un nuevo arreglo y eso implica costos adicionales innecesarios:
  - Python: use índices o arreglos de `numpy`.
  - Julia: use índices o vistas, i.e., `@view`.

### Entregable
El reporte deberá ser en formato notebook y el PDF del mismo notebook. El notebook debe contener las implementaciones de los algoritmos solicitados. Recuerde que el reporte debe llevar claramente su nombre, debe incluir una introducción, la explicación de los experimentos realizados, las observaciones, conclusiones y bibliografía.

Para generar el PDF primero guarde el notebook como HTML y luego genere el PDF renderizando e imprimiendo el HTML con su navegador. En lugar de imprimir, seleccione guardar como PDF.


## Referencias #
- [@Knuth98]: Donald E. Knuth. 1998. The Art of Computer Programming, Volume 3: (2nd Ed.) Sorting and Searching. Addison Wesley Longman Publishing Co., Inc., Redwood City, CA, USA.
- [@Cormen01]: Cormen et. al. Introduction to algorithms. MIT press 2001. 2nd edition.
- [@Sedgewick98]: Robert Sedgewick. Algorithms in C++ - Parts 1-4: Fundamentals, Data Structures, Sorting, Searching. Addison-Wesley-Longman, 1998. 3rd Edition.
- [@Estivill92] Vladimir Estivill-Castro, Deric Wood. A Survey of Adaptive Sorting Algorithms. ACM Computmg Surveys, Vol. 24, No. 4, December 1992.
- [@Cook80] Curtis R. Cook, Do Jin Kim. Best Sorting Algorithm for Nearly Sorted Lists. Commun. ACM. Vol 23, number 11.
- [@Loeser74]: Loeser, Rudolf. 1974. Some Performance Tests of "Quicksort" and Descendants. Commun. ACM. Vol 17, number 3. pp 143-152. http://doi.acm.org/10.1145/360860.360870}.
- [@SortWiki]: https://en.wikipedia.org/wiki/Sorting_algorithm
