// Visualizar todos los nodos
MATCH (n)
RETURN n;

// Consultar estudiantes
MATCH (e:Estudiante)
RETURN e.id, e.nombre, e.carrera, e.semestre;

// Consultar materias.
 MATCH (m:Materia)
RETURN m.id, m.nombre, m.area;

//Consultar profesores
MATCH (p:Profesor)
RETURN p.id, p.nombre, p.departamento;

//Consultar relaciones de inscripción
MATCH (e:Estudiante)-[:INSCRITO_EN]->(m:Materia)
RETURN e.nombre AS estudiante, m.nombre AS materia;

//Consultar relaciones de impartición
MATCH (p:Profesor)-[:IMPARTE]->(m:Materia)
RETURN p.nombre AS profesor, m.nombre AS materia;
