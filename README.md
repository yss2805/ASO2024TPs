TP3
a) Cuando ejecutas el mismo archivo varias veces, ves que el tiempo que toma es casi siempre el mismo. Pero si comparas el tiempo que tarda en ejecutarse un archivo con otro diferente, ahí sí que se nota la diferencia en el tiempo. No se puede predecir, porque los dos archivos hacen cosas distintas cuando se ejecutan.
b) Los tiempos son parecidos, pero no iguales.
c) Lo que pasó fue que cuando ejecuté el archivo 10 veces con las líneas comentadas, el valor final fue 0. Los tiempos variaron entre 0,0109 y 0,0106 segundos. Pero con el archivo con las líneas sin comentar, los valores finales daban números negativos y positivos sin pasarse de 500000 y -500000. Los tiempos variaron entre 2,6 y 2,5 segundos. Esto pasa porque se le agregó un for y un pass.
El problema es que hay 2 hilos que modifican la misma variable global al mismo tiempo sin sincronización, lo que provoca una race condition. Una race condition ocurre cuando dos o más hilos acceden y modifican compartidamente una variable al mismo tiempo, lo que puede resultar en resultados inconsistentes e impredecibles.
Además, esto también implica una región crítica, que es la sección del código donde se accede a la variable compartida. Para evitar estos problemas, se debe sincronizar el acceso a la región crítica usando mecanismos como semáforos, asegurando que solo un hilo pueda modificar la variable a la vez.

