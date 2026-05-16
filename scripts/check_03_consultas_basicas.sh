#!/bin/bash
set -e

file="queries/03_consultas_basicas.cypher"

grep -iq "MATCH" "$file"
grep -iq "RETURN" "$file"
grep -iq "Estudiante" "$file"
grep -iq "Materia" "$file"
grep -iq "Profesor" "$file"

echo "Consultas básicas correctas"