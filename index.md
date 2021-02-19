# Introducción

El _Análisis de algoritmos y estructuras de datos_ es una materia formativa diseñada para comprender el desempeño de los algoritmos bajo una cierta entrada. Su estudio nos permite identificar el problema algorítmico subyacente dentro de problemas reales, y por tanto, ser capaces de seleccionar, adaptar o construir una solución eficiente y eficaz para dicho problema. Es común que la solución adecuada sobre la solución ingenua permita optimizar de manera significativa los recursos computacionales, y que en última instancia, se pueden traducir como la reducción de costos de operación en un sistema o la posibilidad de procesar grandes cantidades de información de manera más eficiente.

En el ciclo de proyectos de análisis de datos, la construcción e implementación de algoritmos constituye la base de la programación para prueba de la hipótesis y el modelado de problemas de análisis de datos. Los conocimientos adquiridos servirán para obtener las herramientas y la intuición necesaria para plantear la solución a un problema basado en un modelo de cómputo, en particular, determinar los recursos computacionales en dicho modelo para resolverlo de manera eficiente y escalable cuando sea posible.

Al terminar este curso, se pretende que el alumno sea competente para seleccionar, diseñar, implementar y analizar algoritmos sobre secuencias, conjuntos y árboles para resolver problemas optimizando los recursos disponibles, en particular, memoria y tiempo de cómputo. 

A lo largo de las unidades que se revisarán, se mostrarán diversas técnicas de desarrollo y análisis de algoritmos aplicadas a problemas como búsqueda en arreglos ordenados, ordenamiento de los mismos, codificación de enteros, operaciones eficientes de conjuntos representados como arreglos ordenados.

Se culminará el curso con un proyecto integrado: la creación de un índice invertido para búsqueda de texto completo. Los índices invertidos son estructuras que se distinguen por su versatilidad en el análisis de datos y su alto desempeño, son una parte fundamental de un motor de búsqueda, así como un posible componente para asegurar la eficiencia en algunos algoritmos de inteligencia computacional. 

A lo largo de los temas se abordarán darán detalles teóricos sobre los problemas y los algoritmos, así como también se motivará al estudiante a realizar sus propias implementaciones. En la mayoría de los temas se realizarán análisis experimentales de los mismos y reportes.


## Temario
- 1. Motivación
- 2. Análisis de la eficiencia de un algoritmo
- 3. Búsqueda sobre listas ordenadas
- 4. Estructuras de datos para búsqueda
- 5. Ordenamiento
- 6. Buscar es codificar / ordenar es comprimir
- 7. Algoritmos de intersección y unión
- 8. Algoritmos para búsqueda de patrones en cadenas
- 9. Proyecto integrador: construcción de un índice invertido


## Sobre el lenguaje de programación

En princpio casi cualquier lenguaje de programación podría utilizarse para el curso, sin embargo, para efectos prácticos, nos limitaremos a dos lenguajes de programación:

- Python, se recomieda utilizar la distribución de https://www.anaconda.com/download/
- Julia, se recomienda utilizar la versión 1.5, o superior, https://julialang.org/


Ambos lenguajes de programación son fáciles de aprender y altamente productivos. Python es un lenguaje excelente para realizar prototipos, o para cuando existen bibliotecas que resuelvan el problema que se este enfrentando. En particular, cuando se requiera evaluar la velocidad de un algoritmo, se recomienda utilizar Julia, ya que suele ser mucho más veloz para rutinas creadas directamente en el lenguaje, sin necesidad de un segundo lenguaje para operaciones a bajo nivel.

Se hará uso intensivo de Jupyter Notebook (https://jupyter.org/) o JupyterLab (https://github.com/jupyterlab/jupyterlab) para las demostraciones y notas, así como también se pedirá que se realicen tareas con el mismo framework.

**Nota:** Aprender a programar no es el objetivo de este curso, por lo que si es necesario, el alumno deberá fortalecer sus capacidades con auto estudio. Sin embargo, se anima a la discusión en los foros sobre cualquier problema, ya sea de programación o relacionado a los conceptos y problemas del curso.

### Recursos para aprender Python y Julia

- Documentación oficial, comenzar por el tutorial https://docs.python.org/3/
- Documentación oficial https://docs.julialang.org/en/stable/
- Curso "Introduction to computational thinking" https://computationalthinking.mit.edu/Fall20/
- Think Julia: How to Think Like a Computer Scientist https://benlauwens.github.io/ThinkJulia.jl/latest/book.html