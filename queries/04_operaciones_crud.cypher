//Crear nuevo estudiante
CREATE (:Estudiante {
  id: 'E006',
  nombre: 'Gertrudis',
  carrera: 'fisica',
  semestre: 3
});

//Crear una relacion.
MATCH (e:Estudiante {id: 'E006'})
MATCH (m:Materia {id: 'M003'})

CREATE (e)-[:INSCRITO_EN {
  calificacion: 95
}]->(m);

//Consultar estudiantes 
MATCH (e:Estudiante)
RETURN e;

//Consultar materias
MATCH (m:Materia)
RETURN m;

//Consultar relaciones
MATCH (a)-[r]->(b)
RETURN a, r, b;

//Actualizar un semestre en un estudiante
MATCH (e:Estudiante {id: 'E006'})
SET e.semestre = 4;

//Actualizar calificaciones
MATCH (e:Estudiante {id: 'E006'})-[r:INSCRITO_EN]->(m:Materia {id: 'M003'})
SET r.calificacion = 100;

//Eliminar relacion 
MATCH (e:Estudiante {id: 'E006'})-[r:INSCRITO_EN]->(m:Materia {id: 'M003'})
DELETE r;

//Eliminar estudiante
MATCH (e:Estudiante {id: 'E006'})
DETACH DELETE e;

