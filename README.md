El proyecto de generación de esta base de datos tiene como objetivo principal mejorar la eficiencia operativa, la toma de decisiones y la experiencia del cliente en FAST FOOD, contribuyendo así al éxito y crecimiento continuo de la empresa en el competitivo mercado de la industria alimentaria.

Desarrollo del Proyecto.
Definición de Requerimientos y Diseño Inicial: Se comprendieron los requisitos del sistema mediante reuniones con stakeholders. Se identificaron las entidades principales y se diseñó un esquema preliminar, decidiendo separar los detalles de las órdenes en una tabla aparte.
Creación de la Estructura de la Base de Datos: Se implementó el esquema en SQL, definiendo las tablas y relaciones. Se incluyeron campos relevantes en tablas clave como Clientes y Sucursales.
Carga de Datos de Muestra y Pruebas: Se generaron datos realistas y se desarrollaron scripts SQL para cargarlos en las tablas. Se realizaron pruebas exhaustivas para garantizar la integridad de los datos y la funcionalidad del sistema.
Respuestas a Preguntas y Documentación: Se elaboraron consultas SQL para responder preguntas específicas y se documentó detalladamente el proceso, incluyendo las decisiones tomadas y sus justificaciones.

Análisis.
Eficiencia operativa por sucursal: Al analizar el total de ventas por sucursal y el valor promedio de las ventas, podemos identificar qué sucursales están generando mayores ingresos y cuáles podrían necesitar mejoras en sus estrategias de ventas. Esto puede ayudar a la gerencia a asignar recursos de manera más efectiva y optimizar la operación de cada sucursal para aumentar su rentabilidad.
Desempeño del personal: Al conocer la cantidad de empleados por departamento y asignados a cada sucursal, así como su participación en la toma de órdenes y entregas, se puede evaluar el desempeño del personal en cada área. Esto puede ayudar a identificar áreas de oportunidad en términos de capacitación o redistribución de tareas para mejorar la eficiencia y la satisfacción del cliente.
Análisis de productos y categorías: Al observar la cantidad de productos por categoría, el precio promedio de los productos dentro de cada categoría y la cantidad de productos vendidos por tipo en cada sucursal, podemos identificar cuáles son los productos más populares entre los clientes y qué categorías tienen un mejor desempeño en términos de ventas. Esto puede guiar decisiones relacionadas con la gestión de inventario, marketing y desarrollo de nuevos productos.
Optimización de procesos de entrega: Al conocer el mayor número de kilómetros recorridos para una entrega y el horario del día con la mayor cantidad de ventas, se pueden identificar oportunidades para optimizar los procesos de entrega y distribución de productos. Esto puede incluir ajustes en las rutas de entrega, la asignación de recursos y la programación del personal para garantizar entregas rápidas y eficientes.
Segmentación de clientes y métodos de pago: Al analizar los tipos de pago utilizados por los clientes y el número total de clientes importados a la base de datos, se pueden identificar tendencias de comportamiento de compra y preferencias de pago. Esto puede informar estrategias de marketing dirigidas y programas de fidelización de clientes adaptados a las necesidades y preferencias de los clientes.

Detalles a Considerar.
Operaciones: Hay variabilidad en el desempeño por sucursal, indicando la necesidad de investigar y mejorar la gestión local.
Personal: La distribución de empleados es desigual entre departamentos y sucursales, requiriendo evaluación y posible contratación adicional.
Productos: Algunas categorías tienen precios altos y mayor demanda, sugiriendo ajustes en estrategias de precios y ampliación de la oferta.
Entregas: Se deben ajustar las rutas y recursos para mejorar la eficiencia en las entregas.
Clientes: La diversidad en métodos de pago y clientes importados destaca la necesidad de segmentar y personalizar estrategias de marketing.

Conclusiones.
Compartir mejores prácticas entre sucursales para mejorar la eficiencia.
Invertir en capacitación y tecnología para mejorar el servicio.
Diversificar la oferta y ajustar precios según preferencias del cliente.
Implementar tecnología de seguimiento para optimizar entregas.
Desarrollar programas de fidelización adaptados a preferencias del cliente.

Optimización y Sostenibilidad.
Modelado de datos eficiente: Se diseñó un esquema relacional bien estructurado que facilita la extracción de datos relevantes para análisis externos. Esto incluye la normalización de datos para reducir la redundancia y mejorar la integridad.
Índices y claves primarias/foráneas: Se crearon índices en columnas frecuentemente utilizadas en consultas de análisis. Además, se definieron claves primarias y foráneas para mantener la integridad de los datos y facilitar la navegación entre tablas.
Optimización de consultas: Se escribieron consultas eficientes que aprovechan al máximo los índices y minimizan el tiempo de procesamiento. Se utilizó la optimización de consultas y el análisis de planes de ejecución para identificar y corregir cuellos de botella.
Particionamiento de datos: En caso de manejar grandes volúmenes de datos, se aplicó el particionamiento para dividir las tablas en segmentos más pequeños, lo que facilita la gestión y mejora el rendimiento de las consultas.


Desafíos y Soluciones.
El comienzo del proyecto fue muy abrumador, ya que no se sabía lo que se esperaba del proyecto como tal, cada avance fue un desafío; desde la creación del DER hasta ahora incluso. Recuerdo que para relacionar las tablas me aparecían múltiples errores de tipo de datos en las columnas y hubo que revisar el código de las columnas correspondientes hasta que se encontró que la Columna OrdenID de la tabla Ordenes no tenía asignado el IDENTITY que le asigna el código autoincremental. Algo parecido ocurrió en la carga de datos en las columnas, Cuando intentaba cargar la tabla de Ordenes entre otros errores me salía que los datos no coincidían con el tipo de configuración del campo o algo parecido, en fin. Al final me tocó cambiar los Datetime por DAtetime2 de las cuatro columnas correspondientes a fechas.


Reflexión Personal.
La verdad, ser analista de datos viéndolo desde el punto de vista del estudiante no es un camino fácil de recorrer; habrá carreras más complicadas pero esta sí que no es fácil, hay mucho que ver y lo que falta, pero de eso se trata. Este proyecto me dio una vista muy clara de lo que es ser un Analista de datos; un Científico de datos o Ingeniero de datos y lo que representa el Lenguaje de Consulta Estructurado en este ámbito, la sinceridad es que no es difícil aprender SQL; pero tampoco es tan sencillo. Como dicen por ahí, la practica hace el maestro así que a practicar lo aprendido en este módulo y a llevarlo al mundo real y al mundo laboral. Con respecto a este proyecto, lo voy a aceptar; se me torno un poco complicado y no he aprendido todo lo que vimos en este módulo. Así que la idea es seguir practicando y si tuviera que volver a empezar este proyecto y con estos conocimientos y experiencias adquiridas. Yo definitivamente poblaría las tablas y luego las relacionaría entre ellas ya que hacerlo de la forma como lo hicimos da mucho problema relacionar esas tablas.

Falencias.
los datos que contiene cada tabla son muy escasos para hacer un análisis a profundidad sobre el performance de la empresa
Algunas preguntas con relación al proyecto no brindaban un panorama general para realizar un análisis acorde como, por ejemplo: 'Conocer la sucursal a la que está asignado cada empleado'. En esta pregunta en específico hubo que incluir el departamento en la consulta para brindar un panorama más general sobre los empleados, ya que todos pertenecen a una sola sucursal.
O también la pregunta de ¿Cómo se comparan las ventas mensuales de este año con el año anterior?. Esta pregunta al igual que la anterior también está mal fundada ya que en los datos solo nos brindan un año que es 2023.

Mejoras.
Para mejorar estas falencias, yo trabajaría en la recopilación de datos adicionales para enriquecer la base de datos. Esto podría implicar recopilar información detallada sobre ventas, empleados, clientes y productos a lo largo del tiempo para obtener una visión más completa del rendimiento de la empresa.
También analizaría las preguntas proporcionadas y las expandiría para abarcar áreas que puedan proporcionar información valiosa para la toma de decisiones. Por ejemplo, en lugar de simplemente conocer la sucursal asignada a cada empleado, podría explorar las asignaciones de empleados por sucursal y departamento, su desempeño individual y la relación con las ventas.
 Otras mejoras serían en cuanto a la implementación de seguridad de datos: Asegurar que la base de datos esté protegida contra posibles amenazas de seguridad, como accesos no autorizados o pérdida de datos.
De igual forma se desarrollarían scripts o herramientas para automatizar tareas repetitivas, como la carga de datos o la generación de informes, lo que aumentaría la eficiencia y reduciría los errores humanos.
