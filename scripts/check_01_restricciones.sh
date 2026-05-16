#!/bin/bash
set -e

file="queries/01_creacion_restricciones.cypher"

grep -iq "CREATE CONSTRAINT" "$file"
grep -iq "Estudiante" "$file"
grep -iq "Materia" "$file"
grep -iq "Profesor" "$file"

echo "Restricciones correctas"