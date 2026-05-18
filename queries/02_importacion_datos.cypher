LOAD CSV WITH HEADERS FROM
'https://raw.githubusercontent.com/clasesfestrada/comandos-neo4j-AleEstevane/refs/heads/main/data/estudiantes.csv'
AS row

CREATE (:Estudiante {
  id: row.id,
  nombre: row.nombre,
  carrera: row.carrera,
  semestre: toInteger(row.semestre)
});


LOAD CSV WITH HEADERS FROM
'https://raw.githubusercontent.com/clasesfestrada/comandos-neo4j-AleEstevane/refs/heads/main/data/materias.csv'
AS row

CREATE (:Materia {
  id: row.id,
  nombre: row.nombre,
  area: row.area
});

LOAD CSV WITH HEADERS FROM
'https://raw.githubusercontent.com/clasesfestrada/comandos-neo4j-AleEstevane/refs/heads/main/data/profesores.csv'
AS row

CREATE (:Profesor {
  id: row.id,
  nombre: row.nombre,
  departamento: row.departamento
});


LOAD CSV WITH HEADERS FROM
'https://raw.githubusercontent.com/clasesfestrada/comandos-neo4j-AleEstevane/refs/heads/main/data/imparticiones.csv'
AS row

CREATE (:Imparticiones {
  profesor_id: row.profesor_id,
  materia_id: row.materia_id
});


LOAD CSV WITH HEADERS FROM
'https://raw.githubusercontent.com/clasesfestrada/comandos-neo4j-AleEstevane/refs/heads/main/data/inscripciones.csv'
AS row

CREATE (:Inscripciones {
  estudiante_id: row.estudiante_id,
  materia_id: row.materia_id,
  calificacion: row.calificacion
});