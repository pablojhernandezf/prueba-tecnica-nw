# Prueba Técnica

Se adjuntan todos los archivos necesarios, opté por usar de supuesto una solución en base a streaming pero se puede optar por cambiar a una basada en lotes con GCP Storage, el codigo está comentado en inglés. A modo general la solución utiliza características propias de GCP para facilitar las cosas como suscripciones directas desde Pub/Sub a Bigquery También opté por no incluir dataflow entremedio para aplicar transformaciones de la data RAW por lo que es algo que se puede mejorar.

## Comentarios

- La solución contempla cloud functions, las cuales solo ejecutan código por lo que el dockerfile de muestra lo usaría en caso de desplegar en un Cloud Run o en Kubernetes

- En la imágen se incluyen ambos diagramas para stream y batch.

- No incluyo modelo de datos porque las unicas tablas son la que simulan la estructura del archivo CSV y la que almacena los Deadletter (mensajes erroneos)

-Olvidé crear commits incrementales y terminé mandando todo directamente a main como una primera versión, no hago esto en el trabajo solo estuve muy enfocado en crear los scripts.

-Dentro de otros mejorables destacaría usar encriptado de datos sensibles y en transito, además de la gestión de permisos en IAM (dar los permisos mínimos)
