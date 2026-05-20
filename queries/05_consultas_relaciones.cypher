//Amigos de Ana
MATCH (a:Estudiante {nombre: 'Ana'})-[:AMIGO_DE]->(amigo:Estudiante)
RETURN amigo.nombre;

//Materias que toman los amigos de Ana
MATCH (a:Estudiante {nombre: 'Ana'})-[:AMIGO_DE]->(amigo:Estudiante)
MATCH (amigo)-[:INSCRITO_EN]->(m:Materia)
RETURN amigo.nombre, m.nombre;

//Profesores que imparten las materias de los amigos de Ana
MATCH (a:Estudiante {nombre: 'Ana'})-[:AMIGO_DE]->(amigo:Estudiante)
MATCH (amigo)-[:INSCRITO_EN]->(m:Materia)
MATCH (p:Profesor)-[:IMPARTE]->(m)
RETURN amigo.nombre, m.nombre, p.nombre;

//Amigos de amigos de Ana
MATCH (a:Estudiante {nombre: 'Ana'})-[:AMIGO_DE*1..2]->(conexion:Estudiante)
RETURN DISTINCT conexion.nombre;

//Estudiantes con una calificacion mayor a 90 y cual.
MATCH (e:Estudiante)-[r:INSCRITO_EN]->(m:Materia)
WHERE r.calificacion >= 90
RETURN e.nombre, m.nombre, r.calificacion;